# -*- coding: utf-8 -*-
# Generated by Django 1.9.5 on 2016-06-04 11:35
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitales', '0006_auto_20160603_0112'),
    ]

    operations = [
        migrations.AlterField(
            model_name='centros',
            name='descripcion',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='telefonos',
            name='telefono',
            field=models.CharField(max_length=20),
        ),
    ]