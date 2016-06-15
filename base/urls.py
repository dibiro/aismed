"""base URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/dev/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from hospitales.views import centros, reguistrar_centros, Index, IndexAplicacion, centroslocal


urlpatterns = [
    url(r'^$', Index.as_view(), name='inicio'),
    url(r'^administrador/', admin.site.urls, name='administrador'),
    url(r'^aplicacion/', IndexAplicacion.as_view(), name='aplicacion'),
    url(r'^centros/$', centros, name='centros'),
    url(r'^centroslocal/$', centroslocal, name='centroslocal'),
    url(r'^reguistrar_centros/$', reguistrar_centros, name='reguistrar_centros'),
]
