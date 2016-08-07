<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {

	public function index()
	{
		$data = array('judul' => 'Data Pengguna', 'konten' => 'master/index');
		$this->load->view('layout/wrapper', $data);
	}

	function dataPengguna()
	{
		$pengguna = array('judul' => 'Data Pengguna', 'konten' => 'master/dataPengguna');
		$this->load->view('layout/wrapper', $pengguna);
	}

}

/* End of file Master.php */
/* Location: ./application/controllers/Master.php */