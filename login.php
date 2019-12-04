<?php
include "header.php"; 
include "koneksi.php";
?>

<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row fullscreen d-flex justify-content-center align-items-center">
						<div class="banner-content col-lg-9 col-md-12 justify-content-center">
							<h6 class="text-uppercase">Don’t think more, This is your Dental Chair</h6>
							<h1>
								Rent Dental Chair			
							</h1>
							
							
						</div>											
					</div>
				</div>
			</section>

			<!-- Start open-hour Area -->
			<section class="open-hour-area">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-12 open-hour-wrap">
							<h1>SIGN IN </h1>
							<p>
								Please Login with your account
							</p>

							<div class="login">
		<form action=  "proseslogin.php?op=in" method="post" onsubmit="return validasi()">
			<div>
				<label></label><br>
				<input type="text" name="username" id="username" placeholder="masukan username" autofocus autocomplete="off">
			</div>
			<div>
				<label></label><br>
				<input type="password" name="password" id="password" placeholder="masukan password">
			</div>
			
			<div>
				<input type="submit" name="login" value="login" class="tombol">
	</div>	
						
						</div>
						</div>
						</div>
						</div>
					</div>
				</div>	
			</section>

<?php include "footer.php"; ?>