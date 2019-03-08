<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class menuController extends CI_Controller {
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
        $this->load->view('index'); 
	}

	public function add_location()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addLocation');
	}

	public function add_new_bin()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addnewBin'); 
	}

		public function add_new_member()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addnewMember'); 
	}

		public function bin_status()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/binStatus'); 
	}

		public function assign_bin_member()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/assignBinmember'); 
	}
		public function view_members()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/viewMembers'); 
	}





}
