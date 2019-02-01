{{!
	© 2017 NetSuite Inc.
	User may not copy, modify, distribute, or re-bundle or otherwise make available this code;
	provided, however, if you are an authorized user with a NetSuite account or log-in, you
	may use this code subject to the terms that govern your access and use.
}}

<div id="{{cartOptionId}}-container" class="product-views-option-text" data-type="option" data-cart-option-id="{{cartOptionId}}" data-item-option-id="{{itemOptionId}}">
	<div class="{{cartOptionId}}-controls-group" data-validation="control-group">
		{{#if isGiftCard}}
			<label class="product-views-option-text-label" for="{{cartOptionId}}">
				{{label}}
			</label>
		{{else}}
			<div class="product-detail-item-options-name">
				<label class="product-views-option-color-label" for="{{cartOptionId}}">
					{{configName}}
				</label>
			</div>
		{{/if}}
		<div data-validation="control">
			{{#if isTextArea}}
				<textarea
					name="{{../cartOptionId}}"
					id="{{../cartOptionId}}"
					class="product-views-option-text-area"
					data-toggle="text-option"
					data-available="true"
					data-id="{{itemOptionId}}">{{#if showSelectedValue}}{{selectedValue.internalid}}{{/if}}</textarea>
			{{else}}
				<input
					name="{{../cartOptionId}}"
					type="{{#if isEmail}}email{{else}}text{{/if}}"
					id="{{../cartOptionId}}"
					class="product-views-option-text-input"
					value="{{#if showSelectedValue}}{{selectedValue.internalid}}{{/if}}"
					data-toggle="text-option"
					data-id="{{itemOptionId}}"
					data-available="true"
                    maxLength="{{maxLength}}"
                >
			{{/if}}
		</div>
	</div>
</div>



{{!----
Use the following context variables when customizing this template: 
	
	model (Object)
	model.cartOptionId (String)
	model.itemOptionId (String)
	model.label (String)
	model.type (String)
	values (Array)
	showSelectedValue (Boolean)
	showRequiredLabel (Boolean)
	itemOptionId (String)
	cartOptionId (String)
	label (String)
	selectedValue (Object)
	isTextArea (Boolean)
	isEmail (Boolean)
	isText (Boolean)
	isCheckbox (Boolean)
	isDate (Boolean)
	isSelect (Boolean)
	showLabel (Boolean)
	showSmall (Boolean)

----}}
