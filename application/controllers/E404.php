<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class E404 extends CI_Controller {

	public function index()
	{
		$data = array('judul' => 'Oops!');
		$this->load->view('404', $data);
	}

}

/* End of file E404.php */
/* Location: ./application/controllers/E404.php */