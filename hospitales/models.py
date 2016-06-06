from __future__ import unicode_literals
from django.contrib.auth.models import User
from django.utils.safestring import mark_safe
from django.db import models
from django.utils import timezone


class Centros(models.Model):
    nombre = models.CharField(max_length=500)
    direccion = models.TextField()
    descripcion = models.TextField(blank=True, null=True)
    latitud = models.TextField()
    longitud = models.TextField()
    fax = models.CharField(max_length=50)
    email = models.EmailField()

    class Meta:
        db_table = 'centros'

    def __unicode__(self):
        return '%s (%s, %s)' % (self.nombre, self.latitud, self.longitud)


class Servicios(models.Model):
    nombre = models.CharField(max_length=100, unique=True)

    class Meta:
        db_table = 'servicios'

    def __unicode__(self):
        return '%s' % self.nombre


class CentrosPorServicios(models.Model):
    centro = models.ForeignKey(Centros)
    servicio = models.ForeignKey(Servicios)
    descripcion = models.TextField()
    estado = models.BooleanField(default=True)

    class Meta:
        db_table = 'centros_por_servicios'

    def __unicode__(self):
        return '%s (%s)' % (self.servicio, self.centro)


class Horarios(models.Model):
    nombre = models.CharField(max_length=100)
    hora_de_entrada = models.TimeField()
    hora_de_salida = models.TimeField()

    class Meta:
        db_table = 'horarios'

    def __unicode__(self):
        return '%s' % (self.nombre)


class CentrosPorHorarios(models.Model):
    centro = models.ForeignKey(Centros)
    horario = models.ForeignKey(Horarios)
    descripcion = models.TextField()

    class Meta:
        db_table = 'centros_por_horario'

    def __unicode__(self):
        return '%s (%s)' % (self.horario, self.centro)


class Telefonos(models.Model):
    centro = models.ForeignKey(Centros)
    telefono = models.CharField(max_length=20)
    descripcion = models.TextField()

    class Meta:
        db_table = 'telefonos'

    def __unicode__(self):
        return '%s (%s)' % (self.telefono, self.centro)
