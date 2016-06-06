# -*- encoding: utf-8 -*-
from django.views.generic import TemplateView
from django.template import RequestContext
import json
from django.shortcuts import HttpResponse, render_to_response
from .models import Centros, CentrosPorServicios, CentrosPorHorarios, Telefonos, Servicios, Horarios
from .datos_iniciales import data


def centros(request):
    dicc = {}
    dicc2 = {}
    lista = []
    lista2 = []
    centros = Centros.objects.all()
    for x in centros:
        dicc = {
            'id': x.id,
            'name': x.nombre,
            'direccion': x.direccion,
            'latitud': x.latitud,
            'longitud': x.longitud,
            'fax': x.fax,
            'email': x.email
        }
        servicios = CentrosPorServicios.objects.filter(centro=x)
        for y in servicios:
            dicc2 = {
                'name': y.servicio.nombre,
                'descripcion': y.descripcion
            }
            if y.estado:
                dicc2['clase'] = 'green'
            else:
                dicc2['clase'] = 'red'
            lista2.append(dicc2)
            dicc2 = {}
        dicc['servicio'] = lista2
        lista2 = []
        horarios = CentrosPorHorarios.objects.filter(centro=x)
        for y in horarios:
            dicc2 = {
                'name': y.horario.nombre,
                'horaint': y.horario.hora_de_entrada.strftime('%H:%M'),
                'horafin': y.horario.hora_de_salida.strftime('%H:%M'),
                'descripcion': y.descripcion
            }
            lista2.append(dicc2)
            dicc2 = {}
        dicc['horarios'] = lista2
        lista2 = []
        telefonos = Telefonos.objects.filter(centro=x)
        for y in telefonos:
            dicc['telefonos'] = ''
            dicc['telefonos'] = dicc['telefonos'] + y.telefono + ', '
        lista.append(dicc)
        dicc = {}
    result = 'data = ' + json.dumps(lista, ensure_ascii=False) + ';'
    return HttpResponse(
        result,
        content_type='application/json; charset=utf-8'
    )


def reguistrar_centros(request):
    data
    for x in data:
        if not Centros.objects.filter(nombre=x["name"]).exists():
            centro = Centros(
                nombre=x["name"],
                direccion=x["direccion"],
                descripcion="falta modificar",
                latitud=x["latitud"],
                longitud=x["longitud"],
                fax=x["fax"],
                email=x["email"],
            )
            centro.save()
            telefonos = Telefonos(
                centro_id=centro.id,
                telefono=x["telefonos"],
                descripcion="Telefono de " + centro.nombre,
            )
            telefonos.save()
            for y in x["servicio"]:
                if not Servicios.objects.filter(nombre=y["name"]).exists():
                    servicio = Servicios(
                        nombre=y["name"]
                    )
                    servicio.save()
                else:
                    servicio = Servicios.objects.get(nombre=y["name"])
                if not CentrosPorServicios.objects.filter(centro_id=centro.id, servicio_id=servicio.id, descripcion="Servicio de " + centro.nombre):
                    centros_por_servicios = CentrosPorServicios(
                        centro_id=centro.id,
                        servicio_id=servicio.id,
                        descripcion="Servicio de " + centro.nombre,
                    )
                    centros_por_servicios.save()
            for y in x["horarios"]:
                if Horarios.objects.filter(nombre=y["name"], hora_de_entrada=y["horaint"], hora_de_salida=y["horafin"]).exists():
                    horarios = Horarios.objects.get(nombre=y["name"], hora_de_entrada=y["horaint"], hora_de_salida=y["horafin"])
                else:
                    horarios = Horarios(
                        nombre=y["name"],
                        hora_de_entrada=y["horaint"],
                        hora_de_salida=y["horafin"]
                    )
                    horarios.save()
                horarios_centro = CentrosPorHorarios(
                    centro_id=centro.id,
                    horario_id=horarios.id,
                    descripcion="Horario de " + centro.nombre,
                )
                horarios_centro.save()
    result = 'listo;'
    return HttpResponse(
        result,
        content_type='application/json; charset=utf-8'
    )


class Index(TemplateView):
    template_name = "index.html"

    def get(self, request, *args, **kwargs):
        return render_to_response(self.template_name, locals(), context_instance=RequestContext(request))


class IndexAplicacion(TemplateView):
    template_name = "aplicacion/index.html"

    def get(self, request, *args, **kwargs):
        return render_to_response(self.template_name, locals(), context_instance=RequestContext(request))


def centroslocal(request):
    dicc = {}
    dicc2 = {}
    lista = []
    lista2 = []
    centros = Centros.objects.all()
    for x in centros:
        dicc = {
            'id': x.id,
            'name': x.nombre,
            'direccion': x.direccion,
            'latitud': x.latitud,
            'longitud': x.longitud,
            'fax': x.fax,
            'email': x.email
        }
        servicios = CentrosPorServicios.objects.filter(centro=x)
        for y in servicios:
            dicc2 = {
                'name': y.servicio.nombre,
                'descripcion': y.descripcion
            }
            if y.estado:
                dicc2['clase'] = 'green'
            else:
                dicc2['clase'] = 'red'
            lista2.append(dicc2)
            dicc2 = {}
        dicc['servicio'] = lista2
        lista2 = []
        horarios = CentrosPorHorarios.objects.filter(centro=x)
        for y in horarios:
            dicc2 = {
                'name': y.horario.nombre,
                'horaint': y.horario.hora_de_entrada.strftime('%H:%M'),
                'horafin': y.horario.hora_de_salida.strftime('%H:%M'),
                'descripcion': y.descripcion
            }
            lista2.append(dicc2)
            dicc2 = {}
        dicc['horarios'] = lista2
        lista2 = []
        telefonos = Telefonos.objects.filter(centro=x)
        for y in telefonos:
            dicc['telefonos'] = ''
            dicc['telefonos'] = dicc['telefonos'] + y.telefono + ', '
        lista.append(dicc)
        dicc = {}
    result = json.dumps(lista, ensure_ascii=False)
    return HttpResponse(
        result,
        content_type='application/json; charset=utf-8'
    )