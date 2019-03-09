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

		public function add_category()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addcategory'); 
	}

		public function add_books()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addbooks');
	}
		public function add_student()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addstudent'); 
	}

		public function add_rfid()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addrfid'); 
	}

		public function assign_rfid()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/assignrfid'); 
	}

		public function view_books()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/viewbooks'); 
	}

		public function view_students()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/viewstudents'); 
	}

		public function book_entryregister()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/bookentryregister'); 
	}
		public function book_returnregister()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/bookreturnregister'); 
	}
		public function fine_register()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/fineregister'); 
	}





}
