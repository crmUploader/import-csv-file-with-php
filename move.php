<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>test file uploading in csv to mysql</title>
</head>
<body>
    <form id="upload_file">
            <input type="file" name="upload" id="file_upload">
            <input type="button" id="upload" value="upload">
    </form>
    <p class="msg"></p>
</body>
<?php 

    $route = "http://localhost/testing";

?>
<footer>
    <script src="jquery.js"></script>

    <script type="text/javascript">
            $(document).on('click','#upload',function(){
                var formData = new FormData();
                formData.append('file', $('#file_upload')[0].files[0]);
                $.ajax({
                    url: "<?php echo $route;?>/upload_pdo.php",
                    type: "post",
                    data: formData,
                    processData: false,
                    contentType: false,
                    beforeSend: function(){
                        $('.msg').html('Uploading....');
                    },
                    success : function(data) {
                        $('.msg').html('Upload Completed....');
                    }
                })
            });
    </script>
</footer>
</html>