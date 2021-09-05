#!/bin/sh

for framework_path in *.xcframework
do
    framework_name=${framework_path/.xcframework/}

    for headers_path in $framework_path/*/Headers
    do
        for header_path in $headers_path/*.h
        do
            framework_header_path=${header_path/.h/-$framework_name.h}
            
            mv $header_path $framework_header_path
        done
    done
done
