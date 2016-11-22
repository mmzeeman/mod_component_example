<!DOCTYPE html>
<html lang="{{ z_language|default:"en"|escape }}">
<head>
	<meta charset="utf-8" />
	<title>{% block title %}{{ id.title }}{% endblock %} &mdash; {{ m.config.site.title.value }}</title>

	<link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="Marc Worrell" />

	{% lib 
	        "bootstrap/css/bootstrap.css" 
	        "bootstrap/css/bootstrap-responsive.css" 
	        "bootstrap/css/bootstrap-base-site.css" 
	%}
	{% block html_head_extra %}{% endblock %}
</head>

<body class="{% block page_class %}{% endblock %}">
<div class="container-fluid">
	{% block content_area %}
		<div class="content">
		{% block content %}
			{% block above %}
			{% endblock %}
			<div class="row-fluid">
				<div class="span8 main">
					{% block main %}{% endblock %}
				</div>

				<div id="subnavbar" class="span4">
					{% block subnavbar %}
					{% endblock %}
				</div>
			</div>
			{% block below %}{% endblock %}
		{% endblock %}
		</div>
	{% endblock %}
</div>

{% script %}

</body>
</html>
