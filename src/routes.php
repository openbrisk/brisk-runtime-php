<?php

use Slim\Http\Request;
use Slim\Http\Response;

$app->get('/healthz', function (Request $request, Response $response, array $args) {
    $this->logger->info("Slim-Skeleton '/' route");
    return $response->withStatus(200)->withHeader('Content-type', 'text/plain');
});
