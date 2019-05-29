<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="bootstrap-4.3.1-dist/css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="bootstrap-4.3.1-dist/js/bootstrap.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" class="card"">
		<div class="card-body" style="width: 800px">
			<form class="form-inline">

				<br>
				<form>
					<div class="input-group mb-8">
						<div class="input-group-prepend">
							<span class="input-group-text">ชื่อ สกุล</span>
						</div>
						<input type="text" class="form-control" placeholder="ชื่อ">
						<input type="text" class="form-control" placeholder="นามสกุล">
					</div>
				</form>

				<div align="left" class="container mt-3">

					<p>ที่อยู่:</p>
					<form action="/action_page.php">
						<select name="cars" class="custom-select mb-3">
							<option selected>ที่อยู่</option>
							<option value="volvo">สารคาม</option>
							<option value="fiat">กรุงเทพ</option>
							<option value="audi">บุรีรัมย์</option>
						</select>

					</form>
				</div>


				<div class="row">
					<div class="col-sm-3">
						<p align="left">เพศ</p>
						<div class="form-check" align="left">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="optradio">ชาย
							</label>
						</div>
						<div class="form-check" align="left">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="optradio">หญิง
							</label>
						</div>


					</div>
					<div class="col-sm-5">
						<p>ที่อยู่:</p>
						<form action="/action_page.php">
							<select name="cars" class="custom-select mb-3">
								<option selected>ชั้นปีที่1</option>
								<option value="fiat">ชั้นปีที่2</option>
								<option value="audi">ชั้นปีที่3</option>
								<option value="audi">ชั้นปีที่4</option>
							</select>

						</form>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label for="usr">GPA:</label> <input type="text"
								class="form-control" id="usr">
						</div>
					</div>

				</div>


				<br>
				<div align="left" class="custom-control custom-checkbox mb-3">
					<input type="checkbox" class="custom-control-input"
						id="customCheck" name="example1"> <label
						class="custom-control-label" for="customCheck">คนไทยหรือไม่?</label>
				</div>
				<div align="left">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>

			</form>

			<script>
				var data = [ [ "cs", "ma", "ia", "it", "gis" ],
						[ "st", "mt", "py", "ph", "eg" ], [ "bs", "eb" ],
						[ "lw", "el" ] ];

				function major() {

					var slfac = document.getElementById("slfac");
					console.log(data[slfac.value]);
					var slmajor = document.getElementById("slmajor");
					slmajor.innerHTML = "";

					for (var i = 0; i < data[slfac.value].length; i++) {
						var optmajor = document.createElement("option");
						optmajor.innerHTML = data[slfac.value][i];
						slmajor.appendChild(optmajor);
						console.log(data[slfac.value] + i);
					}
				}
				///////////////////////////////////////////////////////////////////////////////////////
				
			</script>
		</div>
	</div>
	<hr>

	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-4">
			<p>Faculty:</p>
			<form action="/action_page.php">
				<select id="slfac" name="cars" class="custom-select mb-3"
					onchange="major()">
					<option value="0">วิทยาการสารสนเทศ</option>
					<option value="1">วิทยาศาสต์</option>
					<option value="2">นิติศาสตร์</option>
					<option value="3">บัญชี</option>
				</select>

			</form>
		</div>
		<div class="col-sm-2"></div>
		<div class="col-sm-2">
			

		</div>
		
	</div>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-4">
			<p>Major:</p>
			
				<select id="slmajor" name="cars" class="custom-select mb-3">

			</select>

			
		</div>
		<div class="col-sm-2"></div>
		
	</div>
</body>
</html>