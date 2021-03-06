{{!
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div id="layout" class="shopping-layout">
	<header id="site-header" class="shopping-layout-header {{#if fixedHeader}}fixed-header{{/if}}" data-view="Header"></header>
	<div id="main-container" class="{{#if fixedHeader}}theme-has-fixed-header{{else}}theme-has-static-header{{/if}}">
		<div class="shopping-layout-breadcrumb" itemscope itemtype="https://schema.org/WebPage">
			<div data-view="Global.Breadcrumb" data-type="breadcrumb"></div>
		</div>
		<!-- Main Content Area -->
		<div id="content" class="shopping-layout-content"></div>
		<!-- / Main Content Area -->
	</div>
	<footer id="site-footer" class="shopping-layout-footer" data-view="Footer"></footer>
</div>
