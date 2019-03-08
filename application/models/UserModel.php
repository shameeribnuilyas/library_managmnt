<?php 
   class UserModel extends CI_Model {
	
      function __construct() { 
         parent::__construct(); 
      } 
   
      public function register($data) { 
         if ($this->db->insert("usertbl", $data)) { 
            return true; 
         } 
      } 

      public function login($data) {

         $condition = "emailid =" . "'" . $data['emailid'] . "' AND " . "password =" . "'" . $data['password'] . "'";
         $this->db->select('*');
         $this->db->from('usertbl');
         $this->db->where($condition);
         $this->db->limit(1);
         $query = $this->db->get();
            if ($query->num_rows() == 1) 
            {
            return true;
            } 
            else
            {
            return false;
            }

         }
   
   } 
?> 