# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-04-09 16:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitales', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='hospitales',
            name='latitud',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='hospitales',
            name='longitud',
            field=models.TextField(),
        ),
    ]
