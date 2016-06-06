# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-04-09 16:29
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Hospitales',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=500)),
                ('direccion', models.TextField()),
                ('descripcion', models.TextField()),
                ('latitud', models.IntegerField()),
                ('longitud', models.IntegerField()),
                ('hora_de_entrada', models.TimeField()),
                ('hora_de_salida', models.TimeField()),
            ],
            options={
                'db_table': 'hospitales',
            },
        ),
        migrations.CreateModel(
            name='Servicios',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=500)),
                ('descripcion', models.TextField()),
                ('hospital', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hospitales.Hospitales')),
            ],
            options={
                'db_table': 'servicios',
            },
        ),
    ]
