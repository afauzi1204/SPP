<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?php echo isset($title) ? '' . $title : null; ?>
		</h1>
		<ol class="breadcrumb">
			<li><a href="<?php echo site_url('student') ?>"><i class="fa fa-th"></i> Home</a></li>
			<li class="active"><?php echo isset($title) ? '' . $title : null; ?></li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Small boxes (Stat box) -->
		<div class="row">
			<div class="col-md-8">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title"> Detail Identitas Siswa</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="col-md-12 col-sm-12 col-xs-12 pull-left">
							<div class="row">
								<div class="col-md-12">
									<table class="table table-xs table-striped table-hover">
										<tbody>
											<tr>
												<td>NIS</td>
												<td>:</td>
												<td><?php echo $student['student_nis'] ?></td>
											</tr>
											<tr>
												<td>NISN</td>
												<td>:</td>
												<td><?php echo $student['student_nisn'] ?></td>
											</tr>
											<tr>
												<td>Nama lengkap</td>
												<td>:</td>
												<td><?php echo $student['student_full_name'] ?></td>
											</tr>
											<tr>
												<td>Jenis Kelamin</td>
												<td>:</td>
												<td><?php echo ($student['student_gender'] == 'L') ? 'Laki-laki' : 'Perempuan' ?></td>
											</tr>
											<tr>
												<td>Tempat, Tanggal Lahir</td>
												<td>:</td>
												<td><?php echo $student['student_born_place'] . ', ' . pretty_date($student['student_born_date'], 'd F Y', false) ?></td>
											</tr>
											<tr>
												<td>Hobi</td>
												<td>:</td>
												<td><?php echo $student['student_hobby'] ?></td>
											</tr>
											<tr>
												<td>No. Handphone</td>
												<td>:</td>
												<td><?php echo $student['student_phone'] ?></td>
											</tr>
											<tr>
												<td>Alamat</td>
												<td>:</td>
												<td><?php echo $student['student_address'] ?></td>
											</tr>
											<tr>
												<td>Nama Ibu Kandung</td>
												<td>:</td>
												<td><?php echo $student['student_name_of_mother'] ?></td>
											</tr>
											<tr>
												<td>Nama Ayah Kandung</td>
												<td>:</td>
												<td><?php echo $student['student_name_of_father'] ?></td>
											</tr>
											<tr>
												<td>No. Handphone Orang Tua</td>
												<td>:</td>
												<td><?php echo $student['student_parent_phone'] ?></td>
											</tr>
											<tr>
												<td>Kelas</td>
												<td>:</td>
												<td><?php echo $student['class_name'] ?>
												<?php if (majors() == 'senior') {
												echo $student['majors_name'];
												} ?></td>
											</tr>
											<!-- <?php if (majors() == 'senior') { ?>
												<tr>
													<td>Jurusan</td>
													<td>:</td>
													<td><?php echo $student['majors_name'] ?>
												</td>
												</tr>
											<?php } ?> -->
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="box box-primary">
					<div class="box-body box-profile">
						<?php if (!empty($student['student_img'])) { ?>
							<img src="<?php echo upload_url('student/' . $student['student_img']) ?>" class="profile-user-img img-responsive img-circle">
						<?php } else { ?>
							<img src="<?php echo media_url('img/user.png') ?>" class="profile-user-img img-responsive img-circle">
						<?php } ?>
						<h3 class="profile-username text-center"><?php echo ucwords(strtolower($student['student_full_name'])) ?></h3>
						<p class="text-muted text-center"><?php echo ucwords(strtolower($student['student_born_place'])) . ', ' . pretty_date($student['student_born_date'], 'd F Y', false) ?></p>
						<ul class="list-group list-group-unbordered">
							<li class="list-group-item">
								<b>NIS/NISN</b> <p><a class="pull-left"><?php echo $student['student_nis'] ?>/<?php echo $student['student_nisn'] ?></a></p>
							</li>
							<li class="list-group-item">
								<b>Kelas</b> <p><a class="pull-left">
									<?php echo $student['class_name'] ?>
									<?php if (majors() == 'senior') {
										echo $student['majors_name'];
									} ?>
								</a></p>
							</li>
							<li class="list-group-item">
								<b>Jenis Kelamin</b> <p><a class="pull-left"><?php echo ($student['student_gender'] == 'L') ? 'Laki-laki' : 'Perempuan' ?></a></p>
							</li>
						</ul>
						<a href="<?php echo site_url('manage/student') ?>" class="btn btn-sm bg-gray pull-right"><b><i class="fa fa-arrow-circle-o-left"></i> &nbsp;Kembali</b></a>
						<?php if ($this->session->userdata('uroleid') == SUPERUSER) { ?>
							<a href="<?php echo site_url('manage/student/edit/' . $student['student_id']) ?>" class="btn btn-sm bg-primary"><b><i class="fa fa-pencil-square"></i> &nbsp;Edit</b></a>
							<a href="#delModal<?php echo $student['student_id']; ?>" data-toggle="modal" class="btn btn-sm bg-maroon text-bold"><i class="fa fa-trash" data-toggle="tooltip" title="Hapus"></i> Hapus</a>
						<?php } ?>
					</div>
				</div>
			</div>
			<div class="modal modal-default fade" id="delModal<?php echo $student['student_id']; ?>">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span></button>
							<h3 class="modal-title"><span class="fa fa-warning"></span> Konfirmasi penghapusan</h3>
						</div>
						<div class="modal-body">
							<p>Apakah anda yakin akan menghapus data ini?</p>
						</div>
						<div class="modal-footer">
							<?php echo form_open('manage/student/delete/' . $student['student_id']); ?>
							<input type="hidden" name="delName" value="<?php echo $student['student_full_name']; ?>">
							<button type="button" class="btn btn-default pull-left" data-dismiss="modal"><span class="fa fa-close"></span> Batal</button>
							<button type="submit" class="btn btn-danger"><span class="fa fa-check"></span> Hapus</button>
							<?php echo form_close(); ?>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
	</section>
</div>