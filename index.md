---
layout: default
---

<div class="page-header">
	<h1>
		Development of <abbr title="Transportation for Economic Development">TED</abbr>/GO Hillsborough
	</h1>
</div>

<ul class="timeline">

	{% for post in site.posts %}

	{% capture thecycle %}
	{% cycle '', 'timeline-inverted' %}
	{% endcapture %}

	{% capture theyear %}
	{{ post.date | date: '%Y' }}
	{% endcapture %}

	{% if theyear != thisiteryear %}
	<li id="year{{ post.date | date: '%Y' }}" class="wow fadeIn date-stamp">
		<div class="timeline-badge info">{{ theyear }}</div>
	</li>
	{% endif %}

	{% capture thisiteryear %}
	{{ post.date | date: '%Y' }}
	{% endcapture %}

	<li class="wow fadeInUp {{ thecycle }}">
		<div class="hidden-xs hidden-sm timeline-badge {% if post.badge_color %}{{ post.badge_color }}{% else %}primary{% endif %}">
			<i class="fa fa-{% if post.badge_icon %}{{ post.badge_icon }}{% else %}calendar{% endif %}"></i>
		</div>
		<div class="timeline-panel">
			<div class="timeline-heading">
				<h4 class="timeline-title">
					{{ post.date | date: "%B %-d, %Y" }}
					{% if post.title != '1' %}
					<br>
					<small>{{ post.title }}</small>
					{% endif %}
				</h4>
			</div>
			<div class="timeline-body">
				{{ post.content }}
			</div>
		</div>
	</li>

	{% endfor %}

</ul>