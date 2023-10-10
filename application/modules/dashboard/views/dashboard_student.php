<div class="content-wrapper">
  <section class="content-header">
    <h1>Dashboard</h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box bg-blue">
          <span class="info-box-icon"><i class="fa fa-calendar-o"></i></span>
          <div class="info-box-content">
            <span class="info-box-text">Bulanan</span>
            <span class="info-box-number"><?php echo 'Rp. ' . number_format($total_bulan, 0, ',', '.') ?></span>
            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              Sisa Tagihan Bulanan
            </span>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box bg-green">
          <span class="info-box-icon"><i class="fa fa-calendar"></i></span>
          <div class="info-box-content">
            <span class="info-box-text">Tahunan</span>
            <span class="info-box-number"><?php echo 'Rp. ' . number_format($total_bebas - $total_bebas_pay, 0, ',', '.') ?></span>
            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              Sisa Tagihan Tahunan
            </span>
          </div>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
        <div class="info-box bg-orange">
          <span class="info-box-icon"><i class="fa fa-calculator"></i></span>
          <div class="info-box-content">
            <span class="info-box-text">Total</span>
            <span class="info-box-number"><?php echo 'Rp. ' . number_format(($total_bebas + $total_bulan) - $total_bebas_pay, 0, ',', '.') ?></span>
            <div class="progress">
              <div class="progress-bar" style="width: 70%"></div>
            </div>
            <span class="progress-description">
              Sisa Semua Tagihan
            </span>
          </div>
        </div>
      </div>
    </div>
    <!-- menampilkan informasi -->
    <div class="col-md-7">
        <div class="box box-solid">
          <div class="box-header with-border">
            <h3 class="box-title text-bold">Informasi</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <?php
            foreach ($information as $row) :
            ?>
              <img class="img-responsive pad" src="<?php echo upload_url('information/' . $row['information_img']) ?>" alt="Photo">
              <div class="col-12-md" style="padding: 10px;">
                <h4 class="text-bold"><?php echo $row['information_title']; ?></h4>
                <p><?php echo $row['information_desc']; ?></p>
                <p style="font-size: 12px;" class="badge bg-green"><?php echo pretty_date(date($row['information_input_date']), false) ?></p>
              </div>
            <?php endforeach; ?>
            <!-- /.box-body -->
          </div>
        </div>
      </div>
      <!-- Menampilkan Kalender -->
    <div class="row">
      <div class="col-md-5">
        <div class="box box-solid">
          <div class="box-header with-border">
            <h3 class="box-title text-bold">Kalender</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div>
          <div class="box-body">
            <div id="calendar"></div>
          </div>
        </div>
      </div>
      <!-- <div class="col-md-5">
        <div class="box box-solid">
          <div class="box-header with-border">
            <h3 class="box-title text-bold">Helpdesk</h3>
            <div class="box-tools pull-right">
              <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
            </div>
          </div> -->
          <!-- <div class="box-body">
            <--membuat button helpdesk nomor dapat diganti-->
            <?php 
            // $nowa = 6289647760598;
            ?>
            <!-- <div>jika ada pertanyaan seputar pembayaran pendidikan, silakan klik tombol berikut  -->
              <!-- membuat button dinamis -->
              <?php 
              // echo '<br><a href="https://wa.me/'.$nowa.'?text=Nama:%0AKelas:%0APertanyaan:" class="btn btn-warning">Tanya via WhatsApp</a></br>'; 
              // echo $setting_phone['setting_value'];
              ?>
            <!-- </div>
          </div>
        </div>
      </div> -->
    </div>
  </section>
</div>
<script type="text/javascript">
  $('#calendar').fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'prevYear,nextYear',
    },
    events: "<?php echo site_url('dashboard/dashboard_student'); ?>",
    dayClick: function(date, jsEvent, view) {
      var tanggal = date.getDate();
      var bulan = date.getMonth() + 1;
      var tahun = date.getFullYear();
      var fullDate = tahun + '-' + bulan + '-' + tanggal;
      $('#addModal').modal('toggle');
      $('#addModal').modal('show');
      $("#inputDate").val(fullDate);
      $("#labelDate").text(fullDate);
      $("#inputYear").val(date.getFullYear());
      $("#labelYear").text(date.getFullYear());
    },
    eventClick: function(calEvent, jsEvent, view) {
      $("#delModal").modal('toggle');
      $("#delModal").modal('show');
      $("#idDel").val(calEvent.id);
      $("#showYear").text(calEvent.year);
      var tgl = calEvent.start.getDate();
      var bln = calEvent.start.getMonth() + 1;
      var thn = calEvent.start.getFullYear();
      $("#showDate").text(tgl + '-' + bln + '-' + thn);
      $("#showDesc").text(calEvent.title);
    }
  });

  $("#inputDesc").on('change keyup focus input propertychange', function() {
    var desc = $("#inputDesc").val();
    if (desc.trim().length > 0) {
      $("#btnSimpan").removeClass('disabled');
    } else {
      $("#btnSimpan").addClass('disabled');
    }
  })
  $("#closeModal").click(function() {
    $("#inputDesc").val('');
    $("#btnSimpan").addClass('disabled');
  });
</script>