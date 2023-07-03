#!/bin/bash


dir_one="/opt/mailman/web"
dir_two="/opt/mailman/core"
dir_three="/opt/mailman/databse"

keepone="settings_local.py"
keeptwo="mailman-extra.cfg"

find "$dir_one" ! -name "$keepone" -type f -delete
find "$dir_one" -type d -empty -delete

find "$dir_two" ! -name "$keeptwo" -type f -delete
find "$dir_two" -type d -empty -delete

find "$dir_three" -type f -delete
find "$dir_three" -type d -empty -delete
