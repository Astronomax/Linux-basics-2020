#!/bin/bash
kill $(ps -e | grep tail | cut -f 4 -d " ")
