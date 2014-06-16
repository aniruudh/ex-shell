#!/bin/bash

# =======================
# OPERATORS
# =======================
# -d file -> If file is a directory
if [[ -d '/tmp' ]]; then
	echo "Temp dir exists"
fi

# -e file -> If file exists
if [ -e "$HOME/.bashrc" ] ||  [ -e "$HOME/.bash_profile" ]; then
	echo "You are using Bash"
fi

# -----------------------------------------------------
# Expression Handler (Evaluate expressions in Shell)
# -----------------------------------------------------
# Using $(())
a=10
b=20
c=$(( a + b ))
d=$(( $a * $b ))
echo "$a + $b = $c"
echo "$a * $b = $d"

# Using expr
a=10
b=20
c=`expr $a + $b`
echo "$a + $b = $c"