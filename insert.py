#!/usr/bin/env python

import functools
import shlex
import sys
import os

from lxml.html import builder as E, tostring

BASE_URL = os.environ.get('TALKS_BASE_URL', "file:///" + os.path.abspath('.') + '/')

def div(class_name, text):
    return E.DIV(E.CLASS(class_name), text)

def spacetop(spacing):
    return E.DIV(style='margin-top: {0};'.format(spacing))

def imgh(img_name, height="620"):
    return E.IMG(src=img_name, height=height)

def imgw(img_name, width="970"):
    return E.IMG(src=img_name, width=width)

def img(img_name):
    return E.IMG(src=img_name)

def img_link(fn):
    """
    Wraps <img>-generating function ``fn`` such that the tag returned by
    calling ``fn`` is wrapped in a link to the full image.
    """
    @functools.wraps(fn)
    def inner(img_name, *args, **kwargs):
        return E.A(fn(img_name, *args, **kwargs), href=img_name, target='_blank')
    return inner

imgl = img_link(img)
imghl = img_link(imgh)
imgwl = img_link(imgw)


def tree(tree_name, width="970", height="620"):
    return E.APPLET(
        E.PARAM(name="config_file", value=BASE_URL + 'src/aptx_configuration_file'),
        E.PARAM(name="url_of_tree_to_load", value=BASE_URL + tree_name),
        archive="forester.jar", code="org.forester.archaeopteryx.ArchaeopteryxE.class",
        codebase=BASE_URL, width=width, height=height, alt="applet broken")

func_dict = {
    "div": div,
    "tree": tree,
    "imgh": imgh,
    "imgw": imgw,
    "img": img,
    "imghl": imghl,
    "imgwl": imgwl,
    "imgl": imgl,
    "spacetop": spacetop
}

def map_fun(argl):
    func_name = argl.pop(0)
    return func_dict[func_name](*argl)

def get_fun(line):
    if line.startswith("^"):
        return tostring(map_fun(shlex.split(line[1:]))) + '\n'
    if line.startswith("(*"):
        return ""
    return line

for line in sys.stdin:
    sys.stdout.write(get_fun(line))
