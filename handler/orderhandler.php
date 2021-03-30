<?php
session_start();
include('../partials/connect.php');

$total=$_POST['total'];

$phone=$_POST['phone'];
$name=$_POST['name'];
$address=$_POST['address'];
$customerid=$_SESSION['customerid'];
$payment=$_POST['payment'];

$sql="INSERT INTO orders(CustName,customer_id, address, phone, total, pay_method) VAlUES('$name','$customerid','$address','$phone','$total', '$payment')";
$connect->query($sql);


$sql2="Select id from orders order by id DESC limit 1";
$result=$connect->query($sql2);
$final=$result->fetch_assoc();
$orderid=$final['id'];



foreach ($_SESSION['cart'] as $key => $value) {
	$proid=$value['item_id'];
	$quantity=$value['quantity'];
	$size=$value['size'];
	$sql3="INSERT Into order_details(order_id,product_id,size,quantity) VAlUES('$orderid','$proid',$size,'$quantity')";
	$connect->query($sql3);
	# code...
}
if ($payment=="paypal") {
	$_SESSION['total']=$total;
	header('location: paypal.php');
}else{
	echo "<script> alert('ORDER IS PLACED');
		window.location.href='../index.php';
		</script>";
}
unset($_SESSION['cart']);

?>