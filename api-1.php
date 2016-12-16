<?php 

define("access_vk_url", "https://oauth.vk.com/access_token");
define("id_vk", "dasha_alexandrovna");
define("app_key", "I033MuWTHceCn12ZouZp");
define("vk_url", "https://vk.com");
define("client_id", "5744753");
define("redirect_uri","https://oauth.vk.com/blank.html");

$permission = array(
		'notify', 'friends', 'video', 'audio', 'photos', 'status', 'offline'
	);

$request_par = array(
	'client_id' => '5744753',
	'redirect_uri' => 'https://oauth.vk.com/blank.html',
	'responce_type' =>'token',
	'display' => 'page',
	'scope' => implode(",", $permission)
	);
$url = 'https://oauth.vk.com/authorize?' . http_build_query($request_par);
echo $url;

/*https://oauth.vk.com/authorize?client_id=5744753&redirect_uri=https%3A%2F%2Foauth.vk.com%2Fblank.html&responce_type=token&display=page&scope=notify%2Cfriends%2Cvideo%2Caudio%2Cphotos%2Cstatus%2Coffline

https://oauth.vk.com/blank.html#code=3799a6372cb4d3fd04*/

/*$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "access_vk_url"); //куда послали запрос
curl_setopt($ch, CURLOPT_POST, 1); //с какими параметрами
curl_setopt($ch, CURLOPT_POSTFIELDS,'id_vk','app_key','vk_url'); //тело запроса
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$access_token = curl_exec($ch);

curl_close($ch);

echo '<pre>';
print_r(json_decode($access_token));
echo '</pre>';


$query = isset($_GET['query']) ? $query = urldecode($_GET['query']) : '';

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://api.vk.com/method/audio.search?access_token=I033MuWTHceCn12ZouZp"); //куда послали запрос
curl_setopt($ch, CURLOPT_POST, 1); //с какими параметрами
curl_setopt($ch, CURLOPT_POSTFIELDS,'q='.$query); //тело запроса
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); //хотим сохранить ответ

$response = curl_exec($ch); // посылаем запрос и записываем ответ в переменную

curl_close($ch);


echo '<pre>';
print_r(json_decode($response)); //в ответ получили jsone
echo '</pre>';*/