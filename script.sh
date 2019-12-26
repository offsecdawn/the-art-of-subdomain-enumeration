#!/bin/bash
for i in $(cat scope.txt)
do
        python censys_subdomain_enum.py $i
        python3 crtsh_enum_web.py $i
        python virustotal_subdomain_enum.py $i 40

done
