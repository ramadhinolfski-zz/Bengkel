<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {

	public function index()
	{
		
	}
	function dataPengguna()
	{
		$this->load->model('Minventory');
		$pengguna = array('judul' => 'Data Pengguna', 'konten' => 'master/dataPengguna', 'instruktur' => $this->Minventory->daftarInstruktur()->result());
		$this->load->view('layout/wrapper', $pengguna);
	}

}

/* End of file Master.php */
/* Location: ./application/controllers/Master.php */