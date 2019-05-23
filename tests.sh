#!/usr/bin/env bats

@test "error message is displayed when no input is passed in" {
    run ./consoleApplication.sh
    [ "$status" -eq 1 ]
    [ "$output" = "Please pass an integer to filter against albumId" ]
}

@test "smoketest" {
    run ./consoleApplication.sh 1
    [ "$status" -eq 0 ]
}

@test "no results on input of 0" {
    run ./consoleApplication.sh 0
    [ "$status" -eq 0 ]
    [ "$output" = "[]" ]
}

@test "no results on input of < 0" {
    run ./consoleApplication.sh -1
    [ "$status" -eq 0 ]
    [ "$output" = "[]" ]
}