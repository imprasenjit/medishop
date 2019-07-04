<?php
$CI = &get_instance();
$CI->load->model('Web_settings');
$Web_settings = $CI->Web_settings->retrieve_setting_editdata();
?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="header-icon">
			<i class="pe-7s-note2"></i>
		</div>
		<div class="header-title">
			<h1><?php echo display('invoice_details') ?></h1>
			<small><?php echo display('invoice_details') ?></small>
			<ol class="breadcrumb">
				<li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
				<li><a href="#"><?php echo display('invoice') ?></a></li>
				<li class="active"><?php echo display('invoice_details') ?></li>
			</ol>
		</div>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Alert Message -->
		<?php
		$message = $this->session->userdata('message');
		if (isset($message)) {
			?>
			<div class="alert alert-info alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<?php echo $message ?>
			</div>
			<?php
			$this->session->unset_userdata('message');
		}
		$error_message = $this->session->userdata('error_message');
		if (isset($error_message)) {
			?>
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<?php echo $error_message ?>
			</div>
			<?php
			$this->session->unset_userdata('error_message');
		}
		?>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-bd">
					<div id="printableArea">
						<div class="panel-body">
							<div class="row">
								<div class="col-sm-8">
									<img src="<?php if (isset($Web_settings[0]['invoice_logo'])) {
													echo $Web_settings[0]['invoice_logo'];
												} ?>" class="img img-responsive" alt="" style="width:200px;margin-bottom:20px">
								</div>
								<div class="col-sm-4">
									<h2 class="m-t-0"><?php echo display('invoice') ?></h2>
									<div><?php echo display('invoice_no') ?>: {invoice_no}</div>
									<div class="m-b-15"><?php echo display('billing_date') ?>: {final_date}</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-8">
									{company_info}
									<span class="label label-success-outline m-r-15 p-10"><?php echo display('billing_from') ?></span>
									<address style="margin-top:10px">
										<strong>{company_name}</strong><br>
										{address}<br>
										<abbr><?php echo display('mobile') ?>:</abbr> {mobile}<br>
										<abbr><?php echo display('email') ?>:</abbr>
										{email}<br>
										<abbr><?php echo display('website') ?>:</abbr>
										{website}
									</address>
									{/company_info}
								</div>
								<div class="col-sm-4">
									<span class="label label-success-outline m-r-15"><?php echo display('billing_to') ?></span>
									<address style="margin-top:10px">
										<strong>{customer_name} </strong><br>
										<abbr><?php echo display('address') ?>:</abbr>
										<?php
										if ($customer_address) {
											?>
											{customer_address}
										<?php
										}
										?>
										<br>
										<abbr><?php echo display('mobile') ?>:</abbr>
										<?php
										if ($customer_mobile) {
											?>
											{customer_mobile}
										<?php
										}
										if ($customer_email) {
											?>
											<br>
											<abbr><?php echo display('email') ?>:</abbr>
											{customer_email}
										<?php
										}
										?>
									</address>
									</td>
									</tr>
									</table>
								</div>
							</div>
						</div>
						<div class="table-responsive m-b-20">
							<table class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>(#)</th>
										<th><?php echo display('product_name') ?></th>
										<th>mfr</th>
										<th>HSN</th>
										<th>Pack</th>
										<th>Free</th>
										<th>Batch</th>
										<th>Exp</th>
										<th>Qty</th>
										<th><?php echo display('rate') ?></th>
										<th>Cgst</th>										
										<th>Sgst</th>										
										<th><?php echo display('discount') ?></th>
										<th class="text-right"><?php echo display('total') ?></th>
									</tr>
								</thead>
								<tbody>
									{invoice_all_data}
									<tr>
										<td>{sl}</td>
										<td>
											<div><strong>{product_name} - ({product_model})</strong></div>
										</td>
										<td>{manufacturer}</td>
										<td>{hsn_code}</td>
										<td>{box_size}</td>
										<td>0</td>
										<td>{product_model}</td>
										<td>{expire_date}</td>
										<td>{quantity}</td>
										<td><?php echo (($position == 0) ? "$currency {rate}" : "{rate} $currency") ?></td>
										<td><?php echo (($position == 0) ? "$currency {cgst}" : "{cgst} $currency") ?></td>
										<td><?php echo (($position == 0) ? "$currency {sgst}" : "{sgst} $currency") ?></td>										
										<td><?php echo (($position == 0) ? "$currency {discount}" : "{discount} $currency") ?></td>
										<td class="text-right"><?php echo (($position == 0) ? "$currency {total_price}" : "{total_price} $currency") ?></td>
									</tr>
									{/invoice_all_data}
									<?php
										if ($invoice_all_data[0]['discount'] != 0) {
											?>
											<tr>
											<td colspan="11"></td>
												<th style="border-top: 0; border-bottom: 0;"><?php echo display('discount') ?> : </th>
												<td class="text-right" style="border-top: 0; border-bottom: 0;"><?php echo (($position == 0) ? "$currency {subTotal_discount}" : "{subTotal_discount} $currency") ?> </td>
											</tr>
										<?php }
										if ($invoice_all_data[0]['tax'] != 0) {
											?>
										<!--	<tr><td colspan="11"></td>
												<th style="border-top: 0; border-bottom: 0;"><?php echo display('total_tax') ?> : </th>
												<td class="text-right" style="border-top: 0; border-bottom: 0;"><?php echo (($position == 0) ? "$currency {tax}" : "{tax} $currency") ?> </td>
											</tr>-->
										<?php } ?>
										<tr><td colspan="12"></td>
											<th  class="grand_total"><?php echo display('grand_total') ?> :</th>
											<td class="text-right" class="grand_total"><?php echo (($position == 0) ? "$currency {total_amount}" : "{total_amount} $currency") ?></td>
										</tr>
										<!--<tr>
											<th style="border-top: 0; border-bottom: 0;"><?php echo display('paid_ammount') ?> : </th>
											<td class="text-right" style="border-top: 0; border-bottom: 0;"><?php echo (($position == 0) ? "$currency {paid_amount}" : "{paid_amount} $currency") ?></td>
										</tr>
										<?php
										if ($invoice_all_data[0]['due_amount'] != 0) {
											?>
											<tr>
												<th><?php echo display('due') ?> : </th>
												<td><?php echo (($position == 0) ? "$currency {due_amount}" : "{due_amount} $currency") ?></td>
											</tr>
										<?php
										}
										?>-->
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<div class="col-sm-8" style="display: inline-block;width: 66%">
									<p>
										<h3>Terms & Conditions</h3>
										Goods once sold will not be taken back or exchanged.<br />
										Bills not paid due date will attract 24% interest.<br />
										All disputes subject to Karimganj Jurisdication only.<br />
										All disputes subject to Jurisdication only.<br />
									</p>
									<p><strong><?php echo display('thank_you_for_choosing_us') ?></strong></p>
								</div>
								<div class="col-sm-4" style="display: inline-block;">
									<div style="float:left;width:90%;text-align:center;border-top:1px solid #000;margin-top: 100px;font-weight: bold;">
										<?php echo display('authorised_by') ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer text-left">
					<a class="btn btn-danger" href="<?php echo base_url('Cinvoice'); ?>"><?php echo display('cancel') ?></a>
					<a class="btn btn-info" href="#" id="print_content"><span class="fa fa-print"></span></a>
				</div>
			</div>
		</div>
</div>
</section> <!-- /.content -->
</div> <!-- /.content-wrapper -->
<script src="<?= base_url("assets/js/jquery.print.js"); ?>"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(document).on("click", "#print_content", function () {
            $("#printableArea").print({
                globalStyles: true,
                mediaPrint: true,
                stylesheet: "<?= base_url("assets/css/print.css"); ?>",
                iframe: false,
                noPrintSelector: ".btn",
                deferred: $.Deferred().done(function () {
                    console.log('Printing done', arguments);
                })
            });
        });
    });
</script>