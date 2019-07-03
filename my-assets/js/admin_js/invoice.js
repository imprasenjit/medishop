function addInputField(t) {
    if (count == limits) alert("You have reached the limit of adding " + count + " inputs");
    else {
        var a = "product_name" + count,
            e = document.createElement("tr");
        e.innerHTML = "<td><input type='text' name='product_name' onkeypress='invoice_productList(" + count + ");' class='form-control productSelection' placeholder='Product Model' id='" + a + "' required><input type='hidden' class='autocomplete_hidden_value  product_id_" + count + "' name='product_id[]' id='SchoolHiddenId'/></td> <td><input type='number' name='available_quantity[]' id='' class='form-control text-right available_quantity_" + count + "' value='0' readonly='' /><input type='hidden' name='manufacturer[]' class='form-control text-right manufacturer_"+count+"'  /><input type='hidden' name='hsn_code[]' class='form-control text-right hsn_code_"+count+"'  /><input type='hidden' name='box_size[]'  class='form-control text-right box_size_"+count+"'  /><input type='hidden' name='expire_date[]'  class='form-control text-right expire_date_"+count+"'  /><input type='hidden' name='product_model[]'  class='form-control text-right product_model_"+count+"'  /><input type='hidden' name='mrp_price[]'  class='form-control text-right mrp_price_"+count+"' /></td><td class='text-right'><input type='number' name='product_quantity[]' id='total_qntt_" + count + "' onkeyup='quantity_calculate(" + count + "); stockLimit(" + count + ");' class='total_qntt" + count + " form-control text-right' value='1'/></td><td><input type='number' onkeyup='quantity_calculate(" + count + ");' name='product_rate[]' id='price_item_" + count + "' class='price_item" + count + " form-control text-right' required/></td><td><input type='number' name='tax_rate[]' readonly='' value='0.00' id='total_tax_" + count + "' class='total_tax_" + count + " form-control text-right' /></td><td><input type='number' name='discount[]' onkeyup='quantity_calculate(" + count + "); stockLimit(" + count + ");' id='discount_" + count + "' class='form-control text-right' placeholder='Discount' /></td><td class='text-right'><input class='total_price form-control text-right' type='text' name='total_price[]' id='total_price_" + count + "' value='0.00' readonly='readonly'/></td><td><input type='hidden' id='total_tax_" + count + "' class='total_tax_" + count + "' /><input type='hidden' id='all_tax_" + count + "' class='total_tax'/><a class='btn btn-danger btn-circle' onclick='deleteRow(this)'><i class='fa fa-times' aria-hidden='true'></i></a></td>", document.getElementById(t).appendChild(e), document.getElementById(a).focus(), count++
    }
}

function quantity_calculate(t) {
    
    
    var a = $("#total_qntt_" + t).val(),
        e = $("#price_item_" + t).val(),
        o = $("#discount_" + t).val(),
        l = $("#total_tax_" + t).val();
        console.log("Ohh "+a+"My"+e+" God calculating"+t);
    
    var price_without_tax= parseInt(a * e);
    var gst=price_without_tax * ((l/2)/100);
    if (a > 0) {
        var n =gst+gst+price_without_tax;
        $("#total_price_" + t).val(n);
        var c = a * l;
        $("#all_tax_" + t).val(c)
    } else {
        var n = gst+gst+price_without_tax;
        $("#total_price_" + t).val(n), $("#all_tax_" + t).val(l)
    }
    if (o > 0) {
        var n = (gst+gst+price_without_tax) - o;
        $("#total_price_" + t).val(n);
    } else if (0 > o) {
        var n = a * e;
        $("#total_price_" + t).val(n);
    }
    calculateSum(), invoice_paidamount()
}

function calculateSum() {
    var t = 0,
        a = 0,
        e = 0,
        o = 0;
    $(".total_price").each(function() {
        isNaN(this.value) || 0 == this.value.length || (t += parseFloat(this.value))
    }), 
    o = a.toFixed(0), 
    e = t.toFixed(0), 
    $("#grandTotal").val(e)
}

function invoice_paidamount() {
    var t = $("#grandTotal").val(),
        a = $("#paidAmount").val(),
        e = t - a;
    $("#dueAmmount").val(e)
}

function stockLimit(t) {
    var a = $("#total_qntt_" + t).val(),
        e = $(".product_id_" + t).val(),
        o = $(".baseUrl").val();
    $.ajax({
        type: "POST",
        url: o + "Cinvoice/product_stock_check",
        data: {
            product_id: e
        },
        cache: !1,
        success: function(e) {
            if (a > Number(e)) {
                var o = "You can purchase maximum " + e + " Items";
                alert(o), $("#qty_item_" + t).val("0"), $("#total_qntt_" + t).val("0"), $("#total_price_" + t).val("0")
            }
        }
    })
}

function stockLimitAjax(t) {
    var a = $("#total_qntt_" + t).val(),
        e = $(".product_id_" + t).val(),
        o = $(".baseUrl").val();
    $.ajax({
        type: "POST",
        url: o + "Cinvoice/product_stock_check",
        data: {
            product_id: e
        },
        cache: !1,
        success: function(e) {
            if (a > Number(e)) {
                var o = "You can purchase maximum " + e + " Items";
                alert(o), $("#qty_item_" + t).val("0"), $("#total_qntt_" + t).val("0"), $("#total_price_" + t).val("0.00"), calculateSum()
            }
        }
    })
}

function deleteRow(t) {
    var a = $("#normalinvoice > tbody > tr").length;
    if (1 == a) alert("There only one row you can't delete.");
    else {
        var e = t.parentNode.parentNode;
        e.parentNode.removeChild(e), calculateSum()
    }
}
var count = 2,
    limits = 500;