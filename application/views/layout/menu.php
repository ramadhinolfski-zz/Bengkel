<div class="col-md-3 left_col">
  <div class="left_col scroll-view">
    <div class="navbar nav_title" style="border: 0;">
      <a href="index.html" class="site_title"><i class="fa fa-building"></i> <span>Inventory System</span></a>
    </div>

    <div class="clearfix"></div>

    <!-- menu profile quick info -->
    <div class="profile">
      <div class="profile_pic">
        <img src="<?php echo base_url();?>theme/images/img.jpg" alt="..." class="img-circle profile_img">
      </div>
      <div class="profile_info">
        <span>Welcome,</span>
        <h2>John Doe</h2>
      </div>
    </div>
    <!-- /menu profile quick info -->

    <!-- sidebar menu -->
    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
      <div class="menu_section">
        <h3>General</h3>
        <ul class="nav side-menu">
          <li class="<?php if($this->uri->segment(1)==null || $this->uri->segment(0)=="home"){echo "active";} ?>"><a href="<?=base_url();?>"><i class="fa fa-home"></i> Home</a></li>
          <li><a><i class="fa fa-desktop"></i> Master <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
              <li class="<?php if($this->uri->segment(1)=="dataPengguna"){echo "active";} ?>"><a href="<?=base_url('master/dataPengguna');?>">Data Pengguna</a></li>
              <li class="<?php if($this->uri->segment(1)=="dataPeralatan"){echo "active";} ?>"><a href="<?=base_url('master/dataPeralatan');?>">Data Peralatan</a></li>
              <li class="<?php if($this->uri->segment(1)=="dataBahan"){echo "active";} ?>"><a href="<?=base_url('master/dataBahan');?>">Data Bahan</a></li>
            </ul>
          </li>
          <li><a><i class="fa fa-book"></i> Transaksi <span class="fa fa-chevron-down"></span></a>
            <ul class="nav child_menu">
            <li class="<?php if($this->uri->segment(1)=="transaksi/tambahPeralatan") ?>"><a href="<?=base_url('transaksi/tambahPeralatan'); ?>">Penambahan Alat</a></li>
              <li class="<?php if($this->uri->segment(1)=="transaksi/peminjaman") ?>"><a href="<?=base_url('transaksi/peminjaman'); ?>">Peminjaman</a></li>
              <li class="<?php if($this->uri->segment(1)=="transaksi/sewa") ?>"><a href="<?=base_url('transaksi/sewa'); ?>">Sewa Peralatan</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <!-- /sidebar menu -->

    <!-- /menu footer buttons -->
    <div class="sidebar-footer hidden-small">
      <a data-toggle="tooltip" data-placement="top" title="Settings">
        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="FullScreen">
        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="Lock">
        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
      </a>
      <a data-toggle="tooltip" data-placement="top" title="Logout">
        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
      </a>
    </div>
    <!-- /menu footer buttons -->
  </div>
</div>