#!/usr/bin/env bash

CLASS="com.manageengine.servicedesk.perf.DBMonitoring"
PATH_CLASS="${CLASS//.//}.class"

fd -e jar | xargs -I {} sh -c '
    if jar tf "{}" | grep -q "^'"$PATH_CLASS"'$"; then
        echo "FOUND in: {}"
    fi
'
