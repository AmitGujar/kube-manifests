#!/bin/bash
# this script will create load which will trigger autoscaling

remove_file() {
    if [ -f index.html ]; then 
        echo "Removing existing file"
        rm -rf index.html
    else 
        echo "File does not exist"
    fi
}

get_request() {
    while true; do
        remove_file
        wget http://hpa-example.default.svc.cluster.local:31001;
    done
}
get_request