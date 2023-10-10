<?php

if (isset($student)) {

	$inputFullnameValue = $student['student_full_name'];
	$inputClassValue = $student['class_class_id'];
	$inputMajorValue = $student['majors_majors_id'];
	$inputNisValue = $student['student_nis'];
	$inputNisNValue = $student['student_nisn'];
	$inputPlaceValue = $student['student_born_place'];
	$inputDateValue = $student['student_born_date'];
	$inputPhoneValue = $student['student_phone'];
	$inputParPhoneValue = $student['student_parent_phone'];
	$inputHobbyValue = $student['student_hobby'];
	$inputAddressValue = $student['student_address'];
	$inputGenderValue = $student['student_gender'];
	$inputMotherValue = $student['student_name_of_mother'];
	$inputFatherValue = $student['student_name_of_father'];
	$inputStatusValue = $student['student_status'];
} else {
	$inputFullnameValue = set_value('student_full_name');
	$inputClassValue = set_value('class_class_id');
	$inputMajorValue = set_value('majors_majors_id');
	$inputNisValue = set_value('student_nis');
	$inputNisNValue = set_value('student_nisn');
	$inputPlaceValue = set_value('student_born_place');
	$inputDateValue = set_value('student_born_date');
	$inputPhoneValue = set_value('student_phone');
	$inputParPhoneValue = set_value('student_parent_phone');
	$inputHobbyValue = set_value('student_hobby');
	$inputAddressValue = set_value('student_address');
	$inputGenderValue = set_value('student_gender');
	$inputMotherValue = set_value('student_name_of_mother');
	$inputFatherValue = set_value('student_name_of_father');
	$inputStatusValue = set_value('student_status');
}
?>

<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('student') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li><a href="<?php echo site_url('student/profile') ?>">Profile</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>

	<!-- Main content -->
	<!-- Main content -->
	<section class="content">
		<?php echo form_open_multipart(current_url()); ?>
		<!-- Small boxes (Stat box) -->
		<div class="row">
			<div class="col-md-9">
				<div class="nav-tabs-custom">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab_1" data-toggle="tab">Data Pribadi</a></li>
						<li><a href="#tab_2" data-toggle="tab">Data Sekolah</a></li>
						<li><a href="#tab_3" data-toggle="tab">Data Keluarga</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
							<?php echo validation_errors(); ?>
							<div class="row">
								<div class="col-md-6">
									<?php if (isset($student)) { ?>
										<input type="hidden" name="student_id" value="<?php echo $student['student_id']; ?>">
									<?php } ?>
									<div class="form-group">
										<label>Nama lengkap <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
										<input readonly="" type="text" class="form-control" value="<?php echo $inputFullnameValue ?>">
									</div>
									<div class="form-group">
										<label>Tempat Lahir</label>
										<input name="student_born_place" type="text" class="form-control" value="<?php echo $inputPlaceValue ?>" placeholder="Tempat Lahir">
									</div>
									<div class="form-group">
										<label>No. Handphone <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
										<input name="student_phone" type="text" class="form-control" value="<?php echo $inputPhoneValue ?>" placeholder="No Handphone">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>Jenis Kelamin</label>
										<div class="radio">
											<label>
												<input type="radio" name="student_gender" value="L" <?php echo ($inputGenderValue == 'L') ? 'checked' : ''; ?>> Laki-laki
											</label>&nbsp;&nbsp;
											<label>
												<input type="radio" name="student_gender" value="P" <?php echo ($inputGenderValue == 'P') ? 'checked' : ''; ?>> Perempuan
											</label>
										</div>
									</div>
									<div class="form-group">
										<label>Tanggal Lahir </label>
										<div class="input-group date " data-date="" data-date-format="yyyy-mm-dd">
											<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
											<input class="form-control" type="text" name="student_born_date" readonly="readonly" placeholder="Tanggal" value="<?php echo $inputDateValue; ?>">
										</div>
									</div>
									<div class="form-group">
										<label>Hobi</label>
										<input name="student_hobby" type="text" class="form-control" value="<?php echo $inputHobbyValue ?>" placeholder="Hobi">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<label>Alamat</label>
										<textarea class="form-control" name="student_address" placeholder="Alamat Tempat Tinggal"><?php echo $inputAddressValue ?></textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab_2">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>NIS <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
										<input readonly="" type="text" class="form-control" value="<?php echo $inputNisValue ?>">
									</div>

									<div class="form-group">
										<label>NISN <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
										<input readonly="" type="text" class="form-control" value="<?php echo $inputNisNValue ?>">
									</div>
								</div>
								<div class="col-md-6">
									<?php if (majors() == 'senior') { ?>
										<div class="form-group">
											<label>Jurusan <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
											<input readonly="" type="text" class="form-control" value="<?php echo $student['majors_name'] ?>">
										</div>
									<?php } ?>

									<div class="form-group">
										<label>Kelas *</label>
										<input readonly="" type="text" class="form-control" value="<?php echo $student['class_name'] ?>">
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tab_3">
							<div class="form-group">
								<label>Nama Ibu Kandung</label>
								<input name="student_name_of_mother" type="text" class="form-control" value="<?php echo $inputMotherValue ?>" placeholder="Nama Ibu">
							</div>
							<div class="form-group">
								<label>Nama Ayah Kandung</label>
								<input name="student_name_of_father" type="text" class="form-control" value="<?php echo $inputFatherValue ?>" placeholder="Nama Ayah">
							</div>
							<div class="form-group">
								<label>No. Handphone Orang Tua <small data-toggle="tooltip" title="Wajib diisi">*</small></label>
								<input name="student_parent_phone" type="text" class="form-control" value="<?php echo $inputParPhoneValue ?>" placeholder="No Handphone Orang Tua">
							</div>
						</div>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn bg-maroon text-bold"><i class="fa fa-check"></i> Simpan</button>
						<a href="<?php echo site_url('student/profile'); ?>" class="btn bg-gray text-bold"><i class="fa fa-close"></i> Batal</a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"> Foto Profil</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
					<a href="#" class="thumbnail">
							<?php if (isset($student['student_img']) != NULL) { ?>
								<img src="<?php echo upload_url('student/' . $student['student_img']) ?>" class="img-responsive avatar">
							<?php } else { ?>
								<img src="<?php echo media_url('img/missing.png') ?>" id="target" alt="Choose image to upload">
							<?php } ?>
						</a>
						<input type='file' id="student_img" name="student_img">
						<br>
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-sm bg-blue text-bold"><i class="fa fa-check"></i> Simpan</button>
						<a href="<?php echo site_url('student/profile'); ?>" class="btn btn-sm bg-gray text-bold"><i class="fa fa-close"></i> Batal</a>
						<!-- <?php if (isset($student)) { ?>
							<button type="button" onclick="getId(<?php echo $student['student_id'] ?>)" class="btn btn-sm bg-maroon pull-right text-bold" data-toggle="modal" data-target="#deleteStudent"><i class="fa fa-ban"></i> Hapus
							</button>
						<?php } ?> -->
					</div>
				</div>
			</div>
		</div>
		<?php echo form_close(); ?>
		<!-- /.row -->
	</section>
</div>
<script>
	function getId(id) {
		$('#studentId').val(id)
	}
</script>

<script>
	var classApp = angular.module("classApp", []);
	var SITEURL = "<?php echo site_url() ?>";

	classApp.controller('classCtrl', function($scope, $http) {
		$scope.classs = [];
		<?php if (isset($student)) : ?>
			$scope.class_data = {
				index: <?php echo $student['class_class_id']; ?>
			};
		<?php endif; ?>

		$scope.getClass = function() {

			var url = SITEURL + 'api/get_class/';
			$http.get(url).then(function(response) {
				$scope.classs = response.data;
			});

		};

		$scope.submit = function(student) {
			var postData = $.param(student);
			$.ajax({
				method: "POST",
				url: SITEURL + "manage/student/add_class",
				data: postData,
				success: function(data) {
					$scope.getClass();
					$scope.classForm.class_name = '';
				}
			});
		};

		angular.element(document).ready(function() {
			$scope.getClass();
		});

	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#target').attr('src', e.target.result);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}

	$("#student_img").change(function() {
		readURL(this);
	});
</script>