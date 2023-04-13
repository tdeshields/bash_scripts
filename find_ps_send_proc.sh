#!/bin/bash

grep -rnw '/var/log/mailman' -e $1 | grep '@ps' | less
