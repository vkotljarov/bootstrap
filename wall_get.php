<?php

var_dump($_POST);
if (isset($_POST['group_id']) && ! empty($_POST['group_id'])) {
    var_dump($_POST['group_id']);
// include_once "const.php";

// //wall_get.php



// $fields = [
// 'connections',
// 'site',
// 'education',
// 'contacts',
// 'photo_max',
// 'status',
// 'city',
// 'sex',
// ];


// $data =[
//     'owner_id' => -132716344,//for groups sign '-' is added
//     'sort' => 'id_asc',
//     'offset' => 0,
//     'count' => 30,
//     'filter' => 'all',
//     'fields' => '',//implode(',', $fields),
//     'access_token' => ACCESS_TOKEN,
// ];

// $url = METHOD_URI . 'wall.get?' .
//     http_build_query($data);

// $json = file_get_contents($url);

// file_put_contents("test_data.json", $json);

// exit();
// $result = json_decode(file_get_contents($url), true);


    $result =json_decode(file_get_contents("test_data.json"), true);
    $photo_src = [];
    foreach ($result['response'] as $key => $value) {
        if($key > 0) {
            foreach ($value['attachments'] as $index => $val) {
                $src = '';
                if(!empty($val['photo']['src_xxxbig'])){
                    $src = $val['photo']['src_xxxbig'];
                } elseif (!empty($val['photo']['src_xxbig'])) {
                    $src = $val['photo']['src_xxbig'];
                } elseif (!empty($val['photo']['src_xbig'])) {
                    $src = $val['photo']['src_xbig'];
                } elseif (!empty($val['photo']['src_big'])) {
                    $src = $val['photo']['src_big'];
                }
                $photo_src[] = $src;
            }
        }
    }

    foreach ($photo_src as $key => $value) {
        print "<img src=\"$value\"><br><p>$key</p>";
    }
}
// print_r($photo_src);