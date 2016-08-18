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

	function dataPeralatan()
	{
		$this->load->model('Minventory');
		$peralatan = array('judul' => 'Data Alat dan Bahan', 'konten' => 'master/dataPeralatan', 'alat' => $this->Minventory->dataAlat()->result());
		$this->load->view('layout/wrapper', $peralatan);
	}

}

/* End of file Master.php */
/* Location: ./application/controllers/Master.php */