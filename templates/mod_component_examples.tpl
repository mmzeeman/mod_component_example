{% extends "base.tpl" %}

{% block title %}Mod Component Examples {% endblock %}

{% block content %}

<h2>Example One</h2>
<div class="row">
  <div id="example1" class="col-sm-8">{_ Loading... _}</div>
</div>

{% javascript %}
z_start_view("example1", "empty", {});
{% endjavascript %}

{% endblock %}

{% block _js_include_extra %}

{# Interactive pages which use mod_mqtt usually already have these. #}
{% lib
    "js/qlobber.js"
    "js/pubzub.js"
%}

{# These libs must be included to make mod_component work #}
{% lib
  "js/apps/mithril.js"
  "js/modules/lazyload.js"
  "js/modules/z.component.js"
%}
{% endblock %}
