<?php session_start();
      if(empty($_SESSION['id'])):
      header('Location:../index.php');
      endif;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
  
  <meta http-equiv="content-type" content="text/html; charset=iso-8859-1"/>
  <title></title>
  <meta name="generator" content="LibreOffice 5.4.7.2 (Linux)"/>
  <meta name="author" content="USER"/>
  <meta name="created" content="2019-09-04T01:29:42"/>
  <meta name="changedby" content="user"/>
  <meta name="changed" content="2021-05-03T05:58:18"/>
  <meta name="AppVersion" content="16.0300"/>
  <meta name="DocSecurity" content="0"/>
  <meta name="HyperlinksChanged" content="false"/>
  <meta name="LinksUpToDate" content="false"/>
  <meta name="ScaleCrop" content="false"/>
  <meta name="ShareDoc" content="false"/>
  
  <style type="text/css">
    body,div,table,thead,tbody,tfoot,tr,th,td,p { font-family:"Constantia"; font-size:11px }
    a.comment-indicator:hover + comment { background:#ffd; position:absolute; display:block; border:1px solid black; padding:0.5em;  } 
    a.comment-indicator { background:red; display:inline-block; border:1px solid black; width:0.5em; height:0.5em;  } 
    comment { display:none;  } 
  </style>
  
</head>

<body>

<?php
include('../dist/includes/dbcon.php');
    $id=$_REQUEST['id'];
    $query=mysqli_query($con,"select * from travel natural join user natural join user_details where travel_id='$id'")or die(mysqli_error());
      $row=mysqli_fetch_array($query);
        $id=$row['travel_id'];
        
?>
<table align="left" cellspacing="0" border="0">
  <colgroup width="78"></colgroup>
  <colgroup width="52"></colgroup>
  <colgroup width="54"></colgroup>
  <colgroup width="64"></colgroup>
  <colgroup width="73"></colgroup>
  <colgroup width="17"></colgroup>
  <colgroup width="69"></colgroup>
  <colgroup width="49"></colgroup>
  <colgroup width="81"></colgroup>
  <colgroup width="18"></colgroup>
  <colgroup width="62"></colgroup>
  <colgroup width="48"></colgroup>
  <colgroup width="29"></colgroup>
  <colgroup width="48"></colgroup>
  <tr>
    <td height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td colspan=3 align="right" valign=middle><b><font face="Constantia" color="#000000">ANNEX A</font></b></td>

    </tr>
  <tr>
    <td rowspan="6" colspan="2" style="text-align:right;"><img src="../dist/img/deped.png" width=114 height=95></td>
    <td colspan=8 height="19" align="center" valign=middle><font face="Constantia" color="#000000">Republic of the Philippines</font></td>
    <td rowspan="6" colspan="2" style="text-align:left;"><img src="../dist/img/logo.png" width=100 height=89></td>
  </tr>
  <tr>
    <td colspan=8 height="19" align="center" valign=middle><b><font face="Constantia" color="#000000">DEPARTMENT OF EDUCATION</font></b></td>
    </tr>
  <tr>
    <td colspan="8" height="19" align="center" valign=middle><font face="Constantia" color="#000000">Region VI - Western Visayas</font></td>
    </tr>
  <tr>
    <td colspan=8 height="19" align="center" valign=middle><b><font face="Constantia" color="#000000">DIVISION OF NEGROS OCCIDENTAL</font></b></td>
    </tr>
  <tr>
    <td colspan=8 height="19" align="center" valign=middle><font face="Constantia" color="#000000">PONTEVEDRA I</font></td>
    </tr>
  <tr>
    <td colspan=8 height="19" align="center" valign=middle><b><font face="Constantia" color="#000000">SAN ISIDRO NATIONAL HIGH SCHOOL</font></b><br><br><br><br></td>
    </tr>
  <tr>
    <td style="border-top: 2px solid #000000; border-left: 2px solid #000000" height="12" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000; border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" colspan=11 rowspan=2 height="58" align="center" valign=middle><u><font face="Elephant" size=5 color="#000000" style="margin-left: 120px">            AUTHORITY TO TRAVEL</font></u></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 2px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=3 rowspan=3 align="left" valign=top><b><font face="Constantia" color="#000000">CONTROL No.:<br><br>   <h4 style="font-weight: bolder;text-align: center;font-size: 16px"><?php echo $row['control_no'];?></h4>    </font></b></td>
    </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="33" align="left" valign=middle><b><font face="Constantia" color="#000000">REGION:</font></b></td>
    <td style="border-right: 1px solid #000000" colspan=10 align="left" valign=middle><b><font face="Constantia" color="#000000">VI</font></b></td>
    </tr>
  <tr>
    <td style="border-bottom: 2px solid #000000; border-left: 2px solid #000000" height="33" align="left" valign=middle><b><font face="Constantia" color="#000000">BUREAU/DIVISION/SCHOOL:</font></b></td>
    
    <td style="border-bottom: 2px solid #000000" colspan=10 align="left" valign=middle><b><font face="Constantia" color="#000000">SAN ISIDRO NATIONAL HIGH SCHOOL</font></b></td>
    </tr>
  <tr>
    <td style="border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Date of Filing</font></b></td>
    <td style="border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle sdval="44319" sdnum="1033;1033;D-MMM-YY"><font face="Calibri Light" color="#000000"><?php echo date("d-M-Y",strtotime($row['travel_filed']));?></font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="42" align="left" valign=middle><b><font face="Constantia" color="#000000">NAME</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000"><?php 
                        $query1=mysqli_query($con,"select * from travel_details natural join user where travel_id='$id'")or die(mysqli_error($con));
                            while ($row1=mysqli_fetch_array($query1)){
                              echo strtoupper($row1['user_last']).", ".strtoupper($row1['user_first'])." ";
                            }
                      ?>   </font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Position / Designation</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000">
      <?php
        $query1=mysqli_query($con,"select * from travel_details natural join user natural join user_details where travel_id='$id'")or die(mysqli_error($con));
            while ($row1=mysqli_fetch_array($query1)){
              echo strtoupper($row1['designation'])." ";
        }
      ?> 
    </font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Permanent Station</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000">SAN ISIDRO NATIONAL HIGH SCHOOL</font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Purpose of Travel</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000"><?php echo $row['travel_purpose'];?></font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="47" align="left" valign=middle><b><font face="Constantia" color="#000000">Activity Organized / Sponsored By</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><b><font face="Constantia" color="#000000"><br></font></b></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="47" align="left" valign=middle><b><font face="Constantia" color="#000000">Period Covered                          (Inclusive of Travel Time)</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle sdval="44319" sdnum="1033;1033;D-MMM-YY"><b><font face="Calibri Light" color="#000000"><?php echo date("d-M-Y",strtotime($row['travel_period']));?></font></b></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 rowspan=3 height="34" align="left" valign=middle><b><font face="Constantia" color="#000000">Please Check</font></b></td>
    
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000" colspan=2 rowspan=3 align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000" colspan=3 rowspan=3 align="left" valign=middle><font face="Constantia" color="#000000">Official Business</font></td>
    <td style="border-top: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 2px solid #000000" colspan=4 rowspan=3 align="left" valign=middle><font face="Constantia" color="#000000">Official Time</font></td>
    </tr>
  <tr>
    <td style="border-top: 0px solid #000000; border-bottom: 0px solid #000000; border-left: 0px solid #000000; border-right: 0px solid #000000" align="center" valign=middle><input type="checkbox" <?php if ($row['travel_type']=='Official Business') echo 'checked';else echo '0';?> disabled></font></td>
    <td style="border-top: 0px solid #000000; border-bottom: 0px solid #000000; border-left: 0px solid #000000; border-right: 0px solid #000000" align="left" valign=middle><input type="checkbox" <?php if ($row['travel_type']=='Official Time') echo 'checked'; else echo '';?> disabled></td>
    </tr>
  <tr>
    <td style="border-bottom: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="33" align="left" valign=middle><b><font face="Constantia" color="#000000">Venue / Destination</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000"><?php echo $row['travel_venue'];?></font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Expenses Covered</font></b></td>
    <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle><font face="Constantia" color="#000000"><?php echo $row['travel_coverage'];?></font></td>
    </tr>
  <tr>
    <td style="border-top: 1px solid #000000; border-left: 2px solid #000000; border-right: 1px solid #000000" colspan=3 height="40" align="left" valign=middle><b><font face="Constantia" color="#000000">Fund Source (Pap Code/&hellip;)</font></b></td>
    <td style="border-top: 1px solid #000000; border-left: 1px solid #000000; border-right: 2px solid #000000" colspan=11 align="left" valign=middle sdval="5020101000" sdnum="1033;"><b><font face="Constantia" color="#000000">5020101000</font></b></td>
    </tr>
  <tr>
    <td style="border-top: 2px solid #000000; border-left: 2px solid #000000" colspan=3 height="32" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000; border-left: 1px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000">Approved:</font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 2px solid #000000; border-right: 2px solid #000000" align="left" valign=bottom><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="33" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-left: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="21" align="left" valign=middle><b><font face="Constantia" size=3 color="#000000"><br></font></b></td>
    <td colspan=5 align="left" valign=middle><b><font face="Constantia" size=3 color="#000000"><br></font></b></td>
    <td style="border-right: 1px solid #000000" align="left" valign=middle><b><font face="Constantia" size=3 color="#000000"><br></font></b></td>
    <td style="border-left: 1px solid #000000" align="left" valign=middle><b><font face="Constantia" size=3 color="#000000"><br></font></b></td>
    <td style="border-bottom: 1px solid #000000" colspan=5 align="center" valign=middle><b><font face="Constantia" size=3 color="#000000"><?php echo $row['user_first']." ".$row['user_last'];?></font></b></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><b><font face="Constantia" size=3 color="#000000"><br></font></b></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td colspan=5 align="center" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-left: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-top: 1px solid #000000" colspan=5 align="center" valign=middle><font face="Constantia" color="#000000"><?php echo $row['designation'];?></font></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-left: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-left: 2px solid #000000" height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td colspan=3 align="center" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-left: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000">Date:</font></td>
    <td style="border-bottom: 1px solid #000000" colspan=4 align="center" valign=middle sdval="44319" sdnum="1033;1033;M/D/YYYY"><font face="Constantia" color="#000000"><?php echo date("d-M-Y");?></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td style="border-bottom: 2px solid #000000; border-left: 2px solid #000000" height="20" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000; border-right: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000; border-left: 1px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td style="border-bottom: 2px solid #000000; border-right: 2px solid #000000" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
  <tr>
    <td height="19" align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"> </font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
    <td align="left" valign=middle><font face="Constantia" color="#000000"><br></font></td>
  </tr>
</table>

<br clear=left>
<!-- ************************************************************************** -->

</body>

</html>
