@echo off
IF "%1"=="" (
    set http_proxy=127.0.0.1:1080
    set https_proxy=127.0.0.1:1080
) ELSE (
    set http_proxy=127.0.0.1:%1
    set https_proxy=127.0.0.1:%1
)
echo "/!set success!/n"