{{!
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<li class="{{#if isActive}} active{{/if}}">
<h4>
	<a href="{{facetValueUrl}}" title="{{label}}">
		{{#if behaviorIsMulti}}
			<i class="{{#if isActive}} facets-facet-value-icon-ok {{else}} facets-facet-value-icon-plus{{/if}}"></i>
		{{/if}}
		<span>
			{{formattedLabel}}
		</span>
		<span class="hidden">
			({{count}})
		</span>
	</a>
</h4>
</li>

{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}
