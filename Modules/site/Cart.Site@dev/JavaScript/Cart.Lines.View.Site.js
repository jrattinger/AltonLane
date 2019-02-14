define('Cart.Lines.View.Site', [
    'Backbone',
    'Cart.Lines.View',
    'ProductDetails.AddToProductList.View',
    'Product.Model',
    'underscore',

    'Utils'
], function ProductDetailsItemDetailsView(
    Backbone,
    CartLinesView,
    ProductDetailsAddToProductListView,
    ProductModel,
    _
) {
    'use strict';

    _.extend(CartLinesView.prototype, {
        childViews: _.extend(CartLinesView.prototype.childViews, {
            'AddToProductList': function AddToProductList() {
				return new ProductDetailsAddToProductListView({
					model: this.model
				,	application: this.options.application
				});
            }

        })
    ,   getContext: function ()
        {
            var item = this.model.get('item');
            debugger;
            var myOptions=this.model.get('options').models;
            //console.log('item',this.model);
            var guid='',idcs='';
            for(var mo=0;mo<myOptions.length;mo++){
                var label=this.model.get('options').models[mo].get('label');
                console.log('label',label);
                if(label=='Custom Shoe GUID'){
                    try{
                        guid=this.model.get('options').models[mo].get('value').internalid;
                    }
                    catch(e){
                        guid='';
                    }
                    
                }
                if(label=='Custom Shoe IDCS'){
                    try{
                       idcs=this.model.get('options').models[mo].get('value').internalid;
                       }
                    catch(e){
                        idcs='';
                    }
                }
            }
            var _3dImage='',companyID=SC.ENVIRONMENT.companyId;
            if(guid && idcs){
                _3dImage="https://backoffice.bespokefactory.com/empresas/" +idcs + "/orders/temp/" + guid + "/1.jpg"
            }
            //@class Transaction.Line.Views.Actionable.View.Context
            return {
                    //@property {OrderLine.Model|Transaction.Line.Model} line
                    line: this.model
                    //@property {String} lineId
                ,   lineId: this.model.get('internalid')
                    //@property {Item.Model} item
                ,   item: item
                    //@property {String} itemId
                ,   itemId: item.get('internalid')
                    //@property {String} linkAttributes
                ,   linkAttributes: this.model.getFullLink({quantity:null,location:null,fulfillmentChoice:null})
                    //@property {Boolean} isNavigable
                ,   isNavigable: !!this.options.navigable && !!item.get('_isPurchasable')
                    //@property {Boolean} showCustomAlert
                ,   showCustomAlert: !!item.get('_cartCustomAlert')
                    //@property {String} customAlertType
                ,   customAlertType: item.get('_cartCustomAlertType') || 'info'
                    //@property {Boolean} showActionsView
                ,   showActionsView: !!this.options.ActionsView
                    //@property {Boolean} showSummaryView
                ,   showSummaryView: !!this.options.SummaryView
                    //@property {Boolean} showAlert
                ,   showAlert: !_.isUndefined(this.options.showAlert) ? !!this.options.showAlert : true
                    //@property {Boolean} showGeneralClass
                ,   showGeneralClass: !!this.options.generalClass
                    //@property {String} generalClass
                ,   generalClass: this.options.generalClass
                    // @property {ImageContainer} thumbnail
                ,   thumbnail: this.model.getThumbnail()
                    // @property {String/Boolean} customImage
                ,   customImage:_3dImage!='' ? _3dImage : false
                    //@class Transaction.Line.Views.Actionable.View
                };
            }
    });
});
