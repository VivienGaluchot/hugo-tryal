#!/bin/bash
echo "[$0]"
(
    cd src
    hugo
)
if [ $? == 0 ] ; then
    echo "[$0 OK]"
else
    echo "[$0 FAILED - $?]"
    exit 1
fi