<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{	
		$data = array("judul" => "Inventory Login", "konten" => "login");
		$this->load->view('layout/wrapper', $data);
	}

}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */