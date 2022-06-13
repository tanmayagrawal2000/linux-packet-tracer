<?php
$output=shell_exec('bash tracescript.sh');
echo "<h2>PACKETS SAVED</h2>";
echo "<br>";
echo "<button style='background-color: #4CAF50; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer' onclick=" . "document.location='http://localhost/input.html'" . ">View Packets</button>";
?>
