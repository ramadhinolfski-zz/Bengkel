<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Minventory extends CI_Model {

	function dataPengguna() {
		$dataPengguna = $this->db->get('pengguna');
		return $dataPengguna;
	}
}

/* End of file Minventory.php */
/* Location: ./application/models/Minventory.php */