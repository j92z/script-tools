@echo off
IF "%1"=="" (
    echo "/!enter path please!/n"
) ELSE (
    IF "%2"=="" (
        setx /m PATH "%Path%;%1"
    ) ELSE (
        setx /m PATH "%Path%;%1:%2"
    )
    echo "/!set success!/n"
)