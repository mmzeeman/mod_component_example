{% extends "example-base.tpl" %}

{% block title %}Incremental DOM Examples {% endblock %}

{% block content %}

<div class="container">
<div class="row">
  <h2>Example One</h2>
  <div class="col-sm-8">
  <p> Doing stuff with incremental dom. </p>

  <div class="panel panel-default">
    <div class="panel-heading">Example</div>
    <div class="panel-body">
       <div id="example1">{_ Loading... _}</div>
    </div>
  </div>
</div>
</div>

{# These libs must be included to get incremental dom to work #}
{% lib
  "js/modules/taggy.js"
  "js/apps/incremental-dom-min.js"
%}
{% endblock %}

{% javascript %}

// var writer =  new IncrementalDOMWriter();
var example1 = document.getElementById("example1");
//IncrementalDOM.patchOuter(example1, function() {
//    tokenizer.tokens(data, writer);
//});

console.log(example1);

{% endjavascript %}

{% block _js_include_extra %}
{# Interactive pages which use mod_mqtt usually already have these. #}
{% lib
    "js/qlobber.js"
    "js/pubzub.js"
%}
{% endblock %}
