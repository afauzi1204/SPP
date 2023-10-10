<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <title><?php echo $this->config->item('app_name') ?> | Login Siswa</title>
  <link rel="icon" type="image/png" href="<?php echo media_url('img/logo-mupat.png') ?>">
  <link href="<?php echo media_url() ?>css/bootstrap.min.css" rel="stylesheet" />
  <link href="<?php echo media_url() ?>css/font-awesome.min.css" rel="stylesheet" />
  <link href="<?php echo media_url() ?>css/login-siswa.css" rel="stylesheet" />
</head>

<body>
  <nav class="navbar navbar-atas navbar-fixed-top">

    <div class="col-md-12">
      <div class="navbar-header">
        <?php if (isset($setting_school) and $setting_school['setting_value'] == '-') { ?>
          <a class="navbar-brand" href="<?php echo site_url(); ?>"><span><img src="<?php echo media_url('img/logo-mupat.png')?>" width="30px"></span>&nbsp;<b> <?php echo $this->config->item('app_name') ?></b></a>
          <a class="navbar-brand" href="<?php echo site_url('./manage/auth/login'); ?>"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b></b></a>
        <?php } else { ?>
          <a class="navbar-brand" href="<?php echo site_url(); ?>"><span><img src="<?php echo media_url('img/logo-mupat.png')?>" width="30px"></span>&nbsp;<b> <?php echo $this->config->item('app_name') ?></b></a>
          <a class="navbar-brand" href="<?php echo site_url('./manage/auth/login'); ?>"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b></b></a>
        <?php } ?>
      </div>
    </div>
  </nav>
  <div class="kontainer">
    <div class="kotak">
      <div class="wrapper">
        <!-- <p style="padding: 20px 10px; text-align-last: center;">
          <?php if (isset($setting_logo) and $setting_logo['setting_value'] == NULL) { ?>
            <img src="<?php echo media_url('img/logo.png') ?>" height="80">
          <?php } else { ?>
            <img src="<?php echo upload_url('school/' . $setting_logo['setting_value']) ?>" height="80">
          <?php } ?>
        </p> -->
        
        <div class="title text-left"><span>
        <img src="<?php echo media_url('img/logo-mupat.png')?>" width="60px">
          <b><?php echo $this->config->item('app_name') ?></b></span></i></div>
        <!-- <div class="title text-left"><i class="fa fa-google-wallet"><span> <b><?php echo $this->config->item('app_name') ?></b></span></i></div> -->
        <?php echo form_open('student/auth/login', array('class' => 'login100-form validate-form')); ?>
        <div class="row">
          <i class="fa fa-user"></i>
          <input type="text" required="" autofocus="" name="nis" placeholder="Nomor Induk Sekolah" class="form-control flat">
        </div>
        <div class="row">
          <i class="fa fa-lock"></i>
          <input type="password" required="" name="password" placeholder="Password" class="form-control flat">
        </div>

        <div class="row" style="margin-bottom: -12px;">
          <button class="btn btn-login"><span class="fa fa-random"></span> &nbsp;<b>LOGIN SISWA</b></button>
        </div>
        <?php echo form_close(); ?>
      </div>
    </div>
  </div>
  <div class="navbar navbar-atas navbar-fixed-bottom">
    <p class="navbar-text text-center"><strong>Copyright © AF <?php echo $this->config->item('created') ?> <?php echo $this->config->item('full_app_name') ?>.</strong>
      All rights reserved.</p>
  </div>
  </div>
</body>

</html>