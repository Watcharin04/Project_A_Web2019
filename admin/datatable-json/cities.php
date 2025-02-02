<?php
require_once('includes.php');

// initilize all variable
$params = $columns = $totalRecords = $data = array();
$params = $_REQUEST;

//define index of column
$columns = array(
    0 =>'id',
    1 =>'name',
    2 =>'asciiname',
    3 =>'subadmin1_code',
    4 =>'subadmin2_code'
);

$code = $_GET['code'];
$pieces = explode(".", $code);
$code_count = count($pieces);
if($code_count == 1){
    $country = $pieces[0];
}
elseif($code_count == 2){
    $country = $pieces[0];
    $subadmin1 = $pieces[1];
}
elseif($code_count == 3){
    $country = $pieces[0];
    $subadmin1 = $pieces[1];
    $subadmin2 = $pieces[2];
}

if($code_count == 1){
    $whr = "country_code = '".$country."'";
}
elseif($code_count == 2){
    $whr = "country_code = '".$country."' and subadmin1_code = '".$code."'";
}
elseif($code_count == 3){
    $whr = "country_code = '".$country."' and subadmin2_code = '".$code."'";
}

$where = $sqlTot = $sqlRec = "";

// check search value exist
if( !empty($params['search']['value']) ) {
    $where .=" WHERE ";
    $where .=" ( id = '".$params['search']['value']."%' ";
    $where .=" OR name LIKE '".$params['search']['value']."%' ";
    $where .=" OR asciiname LIKE '".$params['search']['value']."%' ";
    $where .=" OR subadmin1_code = '".$params['search']['value']."%' ";
    $where .=" OR subadmin2_code = '".$params['search']['value']."%')";
    $where .=" AND ( $whr )";
}

// getting total number records without any search
$sql = "SELECT * FROM `".$config['db']['pre']."cities`";
$sqlTot .= $sql;
$sqlRec .= $sql;
//concatenate search sql if value exist
if(isset($where) && $where != '') {

    $sqlTot .= $where;
    $sqlRec .= $where;
}else{
    $where .=" Where ( $whr )";
    $sqlTot .= $where;
    $sqlRec .= $where;
}

$sqlRec .=  " ORDER BY ". $columns[$params['order'][0]['column']]."   ".$params['order'][0]['dir']." LIMIT ".$params['start']." ,".$params['length']." ";

$queryTot = $pdo->query($sqlTot);
$totalRecords = $queryTot->rowCount();
$queryRecords = $pdo->query($sqlRec);

//iterate on results row and create new index array of data
foreach ($queryRecords as $row) {
    //$data[] = $row;
    $id = $row['id'];
    $name = $row['name'];
    $asciiname = $row['asciiname'];
    $country_code = $row['country_code'];
    $subadmin1_code = $row['subadmin1_code'];
    $subadmin2_code = $row['subadmin2_code'];

    $status = $row['active'];

    if ($status == "1"){
        $status = '<span class="label label-success">Activated</span>';
    }
    elseif($status == "0")
    {
        $status = '<span class="label label-warning">Not Active</span>';
    }

    $row0 = '<td>
                <label class="css-input css-checkbox css-checkbox-default">
                    <input type="checkbox" class="service-checker" value="'.$id.'" id="row_'.$id.'" name="row_'.$id.'"><span></span>
                </label>
            </td>';
    $row1 = '<td>'.$id.'</td>';
    $row2 = '<td>'.$name.'</td>';
    $row3 = '<td>'.$asciiname.'</td>';
    $row4 = '<td>'.get_stateName_by_code($subadmin1_code).' ('.$subadmin1_code.')</td>';
    $row5 = '<td>'.get_district_by_code($subadmin2_code).' ('.$subadmin2_code.')</td>';
    $row6 = '<td>'.$status.'</td>';
    $row7 = '<td class="text-center">
                <div class="btn-group">
                    <a href="#" data-url="panel/loc_city_edit.php?id='.$id.'" data-toggle="slidePanel" class="btn btn-xs btn-default"> <i class="ion-edit"></i> Edit</a>
                    <a href="javacript:void(0)" class="btn btn-xs btn-danger item-js-delete" data-ajax-action="deleteCity"> <i class="ion-close"></i></a>
                </div>
            </td>';

    $value = array(
        "DT_RowId" => $code,
        0 => $row0,
        1 => $row1,
        2 => $row2,
        3 => $row3,
        4 => $row4,
        5 => $row5,
        6 => $row6,
        7 => $row7
    );
    $data[] = $value;
}

$json_data = array(
    "draw"            => intval( $params['draw'] ),
    "recordsTotal"    => intval( $totalRecords ),
    "recordsFiltered" => intval($totalRecords),
    "data"            => $data   // total data array
);

echo json_encode($json_data);  // send data as json format
?>
