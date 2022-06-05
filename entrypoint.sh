#!/bin/sh -l

echo "Hello ${INPUT_WHO_TO_GREET}"
time=$(date)
echo "::set-output name=time::$time"