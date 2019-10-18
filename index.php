<?php declare(strict_types=1);

use Siler\{Http\Request, Route};

require 'vendor/autoload.php';

var_dump($_GET);
var_dump($_SERVER);

Route\get('/any-route', function () {
    print_r(Request\get());
});