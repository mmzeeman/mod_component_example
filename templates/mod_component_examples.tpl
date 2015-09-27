{% extends "base.tpl" %}

{% block title %}Mod Component Examples {% endblock %}

{% block content %}

<div class="row">

<h2>Example One</h2>

  <div class="col-sm-8">

  <p>
  In the space below a simple "Hello World" component is loaded. This component
  is dynamically inserted into the page.  
  </p>

  <div class="panel panel-default">
    <div class="panel-heading">Example</div>
    <div class="panel-body">
       <div id="example1">{_ Loading... _}</div>
    </div>
  </div>

  </div>
</div>

{% javascript %}
/* Load component named "empty" on an element with id "example1" */
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
