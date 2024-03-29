function addPurchaseInputField(e) {
    var t = $("tbody#addPurchaseItem tr:first-child").html();
    count == limits ? alert("You have reached the limit of adding " + count + " inputs") : $("tbody#addPurchaseItem").append("<tr>" + t + "</tr>")
}

function calculateSum() {
    var e = 0;
    $(".total_price").each(function() {
        isNaN(this.value) || 0 == this.value.length || (e += parseFloat(this.value))
    }), $("#grandTotal").val(e.toFixed(0))
}

function deleteRow(e) {
    var t = $("#purchaseTable > tbody > tr").length;
    if (1 == t) alert("There only one row you can't delete.");
    else {
        var a = e.parentNode.parentNode;
        a.parentNode.removeChild(a)
    }
    calculateSum()
}
var count = 2,
    limits = 500;
$("body").on("keyup", ".price_item1,.quantity_calculate", function() {
    var e = $(this).parent().parent().children().next().children().val(),
        t = $(this).parent().parent().children().next().next().children().val();
    $(this).parent().parent().children().next().next().next().children().val(e * t), calculateSum()
});