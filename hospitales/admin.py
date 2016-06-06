from django.contrib import admin
from django.contrib.contenttypes.models import ContentType
from .models import *


class CentrosAdmin(admin.ModelAdmin):
    search_fields = ['nombre', 'direccion']


class CentrosByServicioAdmin(admin.ModelAdmin):
    search_fields = ['centro__nombre', 'centro__direccion', 'servicio__nombre']


class CentrosByHorariosAdmin(admin.ModelAdmin):
    search_fields = ['centro__nombre', 'centro__direccion', 'nombre__nombre']


class TelefonoByHorariosAdmin(admin.ModelAdmin):
    search_fields = ['centro__nombre', 'centro__direccion']


class ServicioAdmin(admin.ModelAdmin):
    search_fields = ['nombre']


class HoratiosAdmin(admin.ModelAdmin):
    search_fields = ['nombre']


admin.site.register(Servicios, ServicioAdmin)
admin.site.register(Centros, CentrosAdmin)
admin.site.register(CentrosPorServicios, CentrosByServicioAdmin)
admin.site.register(Horarios, HoratiosAdmin)
admin.site.register(CentrosPorHorarios, CentrosByHorariosAdmin)
admin.site.register(Telefonos, TelefonoByHorariosAdmin)
