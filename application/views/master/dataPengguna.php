<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Daftar Pengguna</h3>
      </div>

      <div class="title_right">
        <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Search for...">
            <span class="input-group-btn">
              <button class="btn btn-default" type="button">Go!</button>
            </span>
          </div>
        </div>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12">
        <div class="x_panel">
          <div class="x_content">
            <!-- header -->
            <div class="row x_title">
              <div class="col-md-6">
                <h3><i class="glyphicon glyphicon-user fa fa-users"></i> Daftar Instruktur </h3>
              </div>

              <div class="col-md-6">
                <div class="pull-right">
                  <h3><button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tambah"><i class="fa fa-plus"></i></button></h3>
                </div>
              </div>
            </div>
            <!-- Konten -->
            <div class="row">
<?php
foreach ($instruktur as $instruktur) {
?>
              <div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                <div class="well profile_view">
                  <div class="col-sm-12">
                    <h4 class="brief"><i><?php echo $instruktur->id_instruktur; ?></i></h4>
                    <div class="left col-xs-7">
                      <h2><?php echo $instruktur->nama_instruktur;?></h2>
                      <p><strong>About: </p>
                      <ul class="list-unstyled">
                        <li><i class="fa fa-phone"></i> : <?php echo $instruktur->phone_instruktur;?> </li>
                        <li><i class="fa fa-building"></i> : <?php echo $instruktur->alamat_instruktur; ?></li>
                      </ul>
                    </div>
                    <div class="right col-xs-5 text-center">
                      <img src="<?=base_url(); echo $instruktur->foto_instruktur;?>" alt="" class="img-circle img-responsive">
                    </div>
                  </div>
                  <div class="col-xs-12 bottom text-center">
                    <div class="col-xs-12 col-sm-6 emphasis">
                      <?php echo $instruktur->nip_instruktur; ?>
                    </div>
                    <div class="col-xs-12 col-sm-6 emphasis">
                      <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                        </i> <i class="fa fa-comments-o"></i> </button>
                      <button type="button" class="btn btn-primary btn-xs">
                        <i class="fa fa-user"> </i> View Profile
                      </button>
                    </div>
                  </div>
                </div>
              </div>
<?php } ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>