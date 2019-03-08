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

	public function add_bus_no()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addBusno'); 
	}

		public function add_route()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/addRoute'); 
	}

		public function assign_bus_to_route()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/assignBusroute'); 
	}

		public function view_user()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/viewUser'); 
	}
		public function view_bus()
	{
		$this->load->helper('url'); 
        $this->load->view('menu/viewBus'); 
	}


	public function invoice()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/invoice'); 
	}

	public function profile()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/profile'); 
	}


	public function login()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/login'); 
	}


	public function register()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/register'); 
	}


	public function f404()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/f404'); 
	}


	public function f500()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/f500'); 
	}


	public function blank()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/blank'); 
	}


	public function pace()
	{
		$this->load->helper('url'); 
        $this->load->view('pages/examples/pace'); 
	}



}
