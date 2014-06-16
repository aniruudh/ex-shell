#!/bin/bash

# =======================
# MISCELLANEOUS
# =======================

if [[ $(id -u) != "0" ]]; then
	echo "You are not a superuser"
fi

# Toggle Tracing
set -x
echo "Tracing is on in this block";
set +x