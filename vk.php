<?php

$permissions = [
    'notify',
    'friends',
    'photos',
    'audio',
    'video',
    'docs',
    'notes',
    'pages',
    'status',
    'wall',
    'groups',
    'messages',
    'email',
    'notifications',
    'stats',
    'ads',
    'market',
    'offline',
];

$data = [
    'client_id' => '5779289',
    'redirect_uri' =>'https://oauth.vk.com/blank.html',
    'display' =>'page',
    'response_type' => 'token',
    'scope' => implode(',', $permissions),
];

$url = 'https://oauth.vk.com/authorize?'
    . http_build_query($data);

echo $url;

//a74c10b7f2dcd09132dcea3c8285482dfbaa880bb9d14343b0ce9e5a87930e820153b5ea0c566f85787be