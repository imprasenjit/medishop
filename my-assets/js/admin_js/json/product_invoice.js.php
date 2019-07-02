<?php
$cache_file = "product.json";
    header('Content-Type: text/javascript; charset=utf8');
?>
var productList = <?php echo file_get_contents($cache_file); ?> ; 

APchange = function(event, ui){
	$(this).data("autocomplete").menu.activeMenu.children(":first-child").trigger("click");
}
    function invoice_productList(cName) {
		var qnttClass = 'ctnqntt'+cName;
		var priceClass = 'price_item'+cName;
		var manufacturerClass = 'manufacturer_'+cName;
		var hsn_codeClass = 'hsn_code_'+cName;
		var expire_dateClass = 'expire_date_'+cName;
		var product_modelClass = 'product_model_'+cName;
		var mrp_priceClass = 'mrp_price_'+cName;
		var box_sizeClass = 'box_size_'+cName;
		var total_tax_price = 'total_tax_'+cName;
		var available_quantity = 'available_quantity_'+cName;
        $( ".productSelection" ).autocomplete(
		{
            source: productList,
			delay:300,
			focus: function(event, ui) {
				$(this).parent().find(".autocomplete_hidden_value").val(ui.item.value);
				$(this).val(ui.item.label);
				return false;
			},
			select: function(event, ui) {
				$(this).parent().find(".autocomplete_hidden_value").val(ui.item.value);
				$(this).val(ui.item.label);
				
				var id=ui.item.value;
				var dataString = 'product_id='+ id;
				var base_url = $('.baseUrl').val();

				
				$.ajax
				   ({
						type: "POST",
						url: base_url+"Cinvoice/retrieve_product_data",
						data: dataString,
						cache: false,
						success: function(data)
						{
							var obj = jQuery.parseJSON(data);
							$('.'+qnttClass).val(obj.cartoon_quantity);
							$('.'+priceClass).val(obj.price);
							$('.'+total_tax_price).val(obj.tax);
							$('.'+available_quantity).val(obj.total_product);
							$('.'+manufacturerClass).val(obj.manufacturer);
							$('.'+hsn_codeClass).val(obj.hsn_code);
							$('.'+expire_dateClass).val(obj.expire_date);
							$('.'+product_modelClass).val(obj.product_model);
							$('.'+mrp_priceClass).val(obj.mrp_price);
							$('.'+box_sizeClass).val(obj.box_size);
							
							//This Function Stay on others.js page
							quantity_calculate(cName);
							
						} 
					});
				
				$(this).unbind("change");
				return false;
			}
		});
		$( ".productSelection" ).focus(function(){
			$(this).change(APchange);
		
		});
    }


