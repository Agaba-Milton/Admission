<html>
<?php include_once 'dbConfig.php'; ?>
<?php include 'menu.php'; ?>
<link rel="stylesheet" type="text/css" href="css/regForm.css">

<body>
	<div class="container">
		<h1 class="well" style="text-align: center;">Registration Form </h1>
		
		<p>Create account with us before Applying,. Thank you</p>
		<?php echo $msg;?>
		<div class="col-lg-12 well">
			<div class="row">
				<form action="register.php" enctype="multipart/form-data" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Full name</label>
								<input type="text" name="fullname" placeholder="Enter Full Name Here.." class="form-control" required>
							</div>

							<div class="col-sm-6 form-group">
								<label>Image</label>
								<input type="file" name="profile_image" accept="image/*" required>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Gender </label>
								<select id="gender" name="gender" placeholder="Select Gender" class="form-control" required>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
								</select>
							</div>
							<div class="col-sm-6 form-group">
								<label>Religious Affiliation</label>
								<select id="bgroup" name="bgroup" placeholder="Select Bloodgroup" class="form-control" required>
									<option>Catholic</option>
									<option> Anglican </option>
									<option> Moslem </option>
									<option> Adventist </option>
									<option> Born Again </option>
									<option>Others</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label>Home & Current Address</label>
							<textarea name="address" placeholder="E.g district, city, town, village, parish,county, & sub-county" rows="3" class="form-control" required></textarea>
						</div>
						<div class="row">
							<div class="col-sm-3 form-group">
								<label>Date of Birth</label>
								<input type="text" data-format="dd/MM/yyy" id="datepicker" placeholder="dd-MM-yyyy" name="dob" class="form-control" required>
							</div>
							<div class="col-sm-3 form-group">
								<label>Sponsor's Name</label>
								<input type="text" name="city" placeholder="sponsor's name" class="form-control" required>
							</div>
							<div class="col-sm-3 form-group">
								<label>Sponsor's Number</label>
								<input type="text" name="state" placeholder="Sponsor's Number" class="form-control" required>
							</div>
							<div class="col-sm-3 form-group">
								<label>Study Session</label>
								<input type="text" name="zip" placeholder="weekend or Day" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<label>Phone Number</label>
							<input type="text" name="pnumber" placeholder="Enter Phone Number Here.." class="form-control" required>
						</div>
						<div class="form-group">
							<label>Email Address</label>
							<input type="email" name="email" placeholder="Enter Email Address Here.." class="form-control" required>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Password</label>
								<input name="password" type="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Enter Password.." class="form-control" required>
							</div>
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label>
								<input type="password"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  name="password2" placeholder="Confirm Password.." class="form-control" required>
							</div>
						</div>
						<input class="btn btn-lg btn-info" type="submit" name="addRegister" value="Create Account">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
