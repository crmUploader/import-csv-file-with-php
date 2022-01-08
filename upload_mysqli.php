<?php 	
$conn = mysqli_connect("localhost","root","","upload_files");
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  exit();
}else{
  $qoute = '"';
  $br = '\n';
  $name = $_FILES['file']['name'];
  $get_ext = explode('.', $name);
  if(end($get_ext) == 'csv')
  {
    $fileName = date('YmdHis').'.'.end($get_ext);

      $path = $_SERVER["DOCUMENT_ROOT"].'/testing/files/'.$fileName;
    move_uploaded_file($_FILES['file']['tmp_name'], $path);
    $sql = "LOAD DATA LOCAL INFILE '{$path}'
          INTO TABLE `sheets`
          FIELDS TERMINATED BY ','
          ENCLOSED BY '{$qoute}'
          LINES TERMINATED BY '{$br}'
          IGNORE 1 ROWS
          ( week_no,
            week_start,
            week_end,
            days_worked,
            email_address,
            real_name,
            alias,
            employee_id,
            employee_status,
            daily_target,
            weekly_target,
            paper,
            team_manager,
            center,
            designation,
            department
          )";
        $conn->query($sql);
        unlink($path);
  }else{

  }

}


 ?>