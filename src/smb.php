<?php

require( 'workflows.php' );

$path = $argv[1];

if (strpos($path, 'smb:') === 0) {
    $path = str_replace('smb:', '', $path);
    $path = str_replace('/', '\\', $path);
} else {
    $pattern = '/\\\\/';
    $replace = '/';
    $path = 'smb:/' . preg_replace($pattern, $replace, $path);
}

$w = new Workflows();

$w->result( $path, $path, $path, '', 'icon.png');

echo $w->toxml();
