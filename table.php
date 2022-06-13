<?php

$protocol=$_POST['type'];
$choice=$_POST['choice'];
if( $choice != "all"){
$filename=$protocol.$choice;
$folder="./tracer/";
$path=$folder.$filename;
$table_title=ucfirst($protocol)." ".ucfirst($choice);
$myfile = fopen($path, "r");
echo "<table border='1'>

<tr>

<th>" . $table_title ." </th>

</tr>";

while(!feof($myfile)) {
        echo "<tr><td> " . fgets($myfile) . "</td></tr>";
}

echo "</table>";

}
else{
        $folder="./tracer/";
        $time=$folder.$protocol."timestamp";
        $sourceip=$folder.$protocol."sourceip";
        $sourcemac=$folder.$protocol."sourcemac";
        $sourceport=$folder.$protocol."sourceport";
        $destip=$folder.$protocol."destip";
        $destmac=$folder.$protocol."destmac";
        $destport=$folder.$protocol."destport";
        $length=$folder.$protocol."length";

        $file1 = fopen($time, "r");
        $file2 = fopen($sourceip, "r");
        $file3 = fopen($destip, "r");
        $file4 = fopen($sourcemac, "r");
        $file5 = fopen($destmac, "r");
        $file6 = fopen($sourceport, "r");
        $file7 = fopen($destport, "r");
        $file8 = fopen($length, "r");
        echo "<table border='1'>

        <tr>
        <th> Time stamp </th>
        <th> Source ip </th>
        <th> Dest ip </th>
        <th> Source mac </th>
        <th> Destination mac </th>";
        if( $protocol != "arp"){
        echo " <th> Source port </th>";
        echo "<th> Destination port </th>";
        }
        echo "<th> Packet length </th>
        </tr>";

        while(!feof($file1)) {
        echo "<tr>";
        echo "<td>" . fgets($file1) . "</td>";
        echo "<td>" . fgets($file2) . "</td>";
        echo "<td>" . fgets($file3) . "</td>";
        echo "<td>" . fgets($file4) . "</td>";
        echo "<td>" . fgets($file5) . "</td>";
        if( $protocol != "arp"){
        echo "<td>" . fgets($file6) . "</td>";
        echo "<td>" . fgets($file7) . "</td>";
        }
        echo "<td>" . fgets($file8) . "</td>";
        echo "</tr>";
}

        echo "</table>";


}

?>
