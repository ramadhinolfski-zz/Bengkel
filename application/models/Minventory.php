<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Minventory extends CI_Model {

	function daftarInstruktur() {
		$dataInstruktur = $this->db->get('instruktur');
		return $dataInstruktur;
	}

	function dataAlat() {
		$dataAlat = $this->db->get('mstAlat');
		return $dataAlat;
	}
}

/* End of file Minventory.php */
/* Location: ./application/models/Minventory.php */