<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
             <li>
              <a href="<?php echo site_url('menu/add_category'); ?>"><i class="fa fa-circle-o"></i> Add Book Category</a>
            </li>
            <li>
              <a href="<?php echo site_url('menu/add_books'); ?>"><i class="fa fa-circle-o"></i> Add Books</a></li>
            <li>
              <a href="<?php echo site_url('menu/add_student'); ?>"><i class="fa fa-circle-o"></i> Add Student</a></li>
            <li>
            <li>
              <a href="<?php echo site_url('menu/add_rfid'); ?>"><i class="fa fa-circle-o"></i> Add RFID</a></li>
            <li>
              <a href="<?php echo site_url('menu/assign_rfid'); ?>"><i class="fa fa-circle-o"></i> Assign RFID</a>
            </li>
            <li>
              <a href="<?php echo site_url('menu/view_books'); ?>"><i class="fa fa-circle-o"></i>View Books</a>
            </li>
            <li>
            <a href="<?php echo site_url('menu/view_students'); ?>"><i class="fa fa-circle-o"></i>View Students</a>
            </li>
            <li>
              <a href="<?php echo site_url('menu/book_entryregister'); ?>"><i class="fa fa-circle-o"></i>Book Entry Register</a>
            </li>
            <li>
              <a href="<?php echo site_url('menu/book_returnregister'); ?>"><i class="fa fa-circle-o"></i>Book Return Register</a>
            </li>
             <li>
            <a href="<?php echo site_url('menu/fine_register'); ?>"><i class="fa fa-circle-o"></i>Fine Register</a>
            </li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>