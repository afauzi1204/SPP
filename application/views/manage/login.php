<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <title><?php echo $this->config->item('app_name') ?> | Login Administrator</title>
  <link rel="icon" type="image/png" href="<?php echo media_url('img/logo-mupat.png') ?>">
  <link href="<?php echo media_url() ?>css/bootstrap.min.css" rel="stylesheet" />
  <link href="<?php echo media_url() ?>css/font-awesome.min.css" rel="stylesheet" />
  <link href="<?php echo media_url() ?>css/login.css" rel="stylesheet" />
  <script src="<?php echo media_url() ?>/js/jquery.min.js"></script>
  
</head>

<body>
  <!-- Menu Header -->
  <nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="col-md-12">
      <div class="navbar-header">
        <?php if (isset($setting_school) and $setting_school['setting_value'] == '-') { ?>
          <a class="navbar-brand" href="#"><b><span><img src="<?php echo media_url('img/logo-mupat.png')?>" width="30px"></span> <?php echo $this->config->item('app_name') ?></b></a>
          <a class="navbar-brand" href="<?php echo site_url('./home'); ?>"><span class='glyphicon glyphicon-random' aria-hidden='true'></span>&nbsp;<b></b></a>
          <a class="navbar-brand" href="<?php echo site_url(); ?>"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b></b></a>
        <?php } else { ?>
          <a class="navbar-brand" href="#"><b><span><img src="<?php echo media_url('img/logo-mupat.png')?>" width="30px"></span> <?php echo $this->config->item('app_name') ?></b></a>
          <a class="navbar-brand" href="<?php echo site_url('./home'); ?>"><span class='glyphicon glyphicon-random' aria-hidden='true'></span>&nbsp;<b></b></a>
          <a class="navbar-brand" href="<?php echo site_url(); ?>"><span class='glyphicon glyphicon-lock' aria-hidden='true'></span>&nbsp;<b></b></a>
        <?php } ?>
      </div>
    </div>
  </nav>

  <!-- Container Login -->
  <div class="kontainer">
    <div class="kotak">
      <div class="wrapper">
      <!-- <link rel="shortcut icon" href=<?php echo media_url('img/logo-mupat.png')?> type="image/x-icon"> -->
      <div class="title text-left">
        <img src="<?php echo media_url('img/logo-mupat.png')?>" width="60px">&nbsp;
        <span><b><?php echo $this->config->item('app_name') ?></b></span>
      </div>
      <!-- <span<br><?php echo $this->config->item('full_app_name') ?></br> -->
      
        <!-- <div class="title text-left"><i class="fa fa-google-wallet"><span> <b><?php echo $this->config->item('app_name') ?></b></span></i></div> -->
        <?php echo form_open('manage/auth/login', array('class' => 'login100-form validate-form')); ?>
        <div class="row">
          <i class="fa fa-user"></i>
          <input type="email" required="" autofocus="" name="email" placeholder="Email" class="form-control flat">
        </div>
        <div class="row ipt_pass">
          <i class="fa fa-lock"></i>
          <input id="password" type="password" required="" name="password" placeholder="Password" class="form-control flat">
          <!-- <button class="btn btn-primary" type="button" onclick="lihat()">Lihat Password</button> -->
        </div>

        <div class="row" style="margin-bottom: -12px;">
          <button class="btn btn-login"><span class="fa fa-random"></span> &nbsp;<b>LOGIN</b></button>
        </div>
        <?php echo form_close(); ?>
      </div>
    </div>
  </div>

  <div class="navbar navbar-inverse navbar-fixed-bottom">
    <p class="navbar-text text-center"><strong>Copyright © AF <?php echo $this->config->item('created') ?>
     <?php echo $this->config->item('full_app_name') ?>.</strong>
      All rights reserved.</p>
  </div>
  </div>
</body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!-- <script>
  // Lihat password
  function lihat()
    {
        var password = document.getElementById('password'),
            button = document.getElementsByTagName('button')[0];
 
        if(button.textContent === 'Lihat Password'){
          password.setAttribute('type', 'text');
          button.textContent = 'Sembunyikan';
        }else{
          password.setAttribute('type', 'password');
          button.textContent = 'Lihat Password';
        }
        return false;
    }
</script> -->
</html>