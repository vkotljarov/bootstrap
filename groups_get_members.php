<?php
include_once "const.php";

//groups_get_members.php



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
    'group_id' => MY_GAMES,
    'sort' => 'id_asc',
    'offset' => 0,
    'count' => 30,
    'fields' => implode(',', $fields),
    'access_token' => ACCESS_TOKEN,
];

//'https://api.vk.com/method/
$url = METHOD_URI . 'groups.getMembers?' .
    http_build_query($data);

$result = file_get_contents($url);

echo $result;