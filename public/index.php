<?php require_once("../includes/functions.php"); ?>
<?php include("../includes/layouts/header.php"); ?>
    
<div id="main" class="main">
  <div id="navigation" class="navigation">
    Nav sidebar
  </div>
  <div id="page" class="page">
    <h2>Admin menu</h2>
    <p>Welcome to admin area</p>
      <ul class="page__list">
        <li><a href="manage_content.php">Manage Website Content</a></li>
        <li><a href="admin.php">Manage Admin Users</a></li>
        <li><a href="logout.php">Logout</a></li>
      </ul>   
  </div>
</div>

<?php include("../includes/layouts/footer.php"); ?>
