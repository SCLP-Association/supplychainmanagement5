<?php
session_start();
unset( $_SESSION['email']);
session_destroy();


?>
<script type="text/javascript">
alert("logged Out from upastha");
document.location="../../";
</script>