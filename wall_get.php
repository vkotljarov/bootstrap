<?php

// echo phpinfo();exit;
include_once "const.php";

if (isset($_POST['group_id']) && ! empty($_POST['group_id'])) {

    $fields = [
        'connections',
        'site',
        'education',
        'contacts',
        'photo_max',
        'status',
        'city',
        'sex',
    ];


    $data =[
        'owner_id' => -1 * $_POST['group_id'],//for groups sign '-' is added
        'sort' => 'id_asc',
        'offset' => 0,
        'count' => 30,
        'filter' => 'all',
        'fields' => '',//implode(',', $fields),
        'access_token' => ACCESS_TOKEN,
    ];

    $url = METHOD_URI . 'wall.get?' .
        http_build_query($data);

    $json = file_get_contents($url);

    file_put_contents("test_data.json", $json);

    // exit();
    $result = json_decode(file_get_contents($url), true);
    // echo "<pre>";
    // var_dump($result);
    // echo "</pre>";
    // exit;


    $result =json_decode(file_get_contents("test_data.json"), true);

    // var_dump($result);exit;
    $photo_src = [];

    foreach ($result['response'] as $key => $value) {
        if($key > 0) {
            if (!empty($value['attachments'])) {
                foreach ($value['attachments'] as $index => $val) {
                    if (!empty($val['photo'])) {
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
                        $photo_src[$val['photo']['pid']] = $src;
                    }
                }
            }
        }
    }
    // var_dump($photo_src);exit;

    include_once "save_photo.php";

    save_photo($photo_src);


        foreach ($photo_src as $key => $value) {
            print "<img src=\"$value\"><br><p>$key</p>";
        }
}
