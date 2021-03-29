<!DOCTYPE html>
<html>
<?php
include('adminpartials/session.php');
include('adminpartials/head.php');
?>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <?php
  include('adminpartials/header.php');
  include('adminpartials/aside.php');
  

  ?>
  <!-- Left side column. contains the logo and sidebar -->
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-sm-9">

          <?php
          include('../partials/connect.php');

          $order_id=$_GET['order_id'];
          $sql="SELECT * from orders WHERE id='$order_id'";
          $results=$connect->query($sql);
          $final=$results->fetch_assoc();        
          ?>
          <h5> CustomerNo : <?php echo $final['customer_id']?> </h5>
          <h5> Customer Name : <?php echo $final['CustName']?> </h5>
          <h5> Total : <?php echo $final['total']?> </h5>
          <h5> Address : <?php echo $final['address']?> </h5><hr>
          <h3>Items Orderd :</h3>
          <?php
          $sql2="SELECT * from order_details WHERE order_id='$order_id'";
          $results=$connect->query($sql2);
          while ($final = $results->fetch_assoc()) { ?>
            <h5 class="inline"> ProductNo : <?php echo $final['product_id']?> </h5>
            <h5 class="inline"> quantity : <?php echo $final['quantity']?> </h5><hr>
          <?php } ?>
        </div>

      
<div class="col-sm-3">
  
  </div>
</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php
  include('adminpartials/footer.php');
  ?>
</body>
</html>
