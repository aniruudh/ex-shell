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

# -----------------------------------------------------
# Conditional operators (&& and ||)
# -----------------------------------------------------
# command1 && command2 - command2 executed iff command1 returns exit status 0
ls |  wc -l && "Number counting successful"
# command1 || command2 - command2 executed iff command1 returns exit status != 0
rm /non/existent/file || echo 'File is not removed'
# command1 && command2 || command3 - command2 executed iff command1 returns exit status 0 else command3 executed
rm /non/existent/file && echo 'File is removed' || echo 'File is not removed'

# -----------------------------------------------------
# Redirection operators
# -----------------------------------------------------
# > - Redirect stdout to file. Creates file if not present. If present, overwrites.
# >> - Redirect stdout to file. Creates file if not present. If present, appends.
# File descriptors: 0 - stdin, 1 - stdout, 2 - stderr

: > sample_file										# Trunate file if exists, if not create empty file.
> sample_file										# Truncate file if exists, if not create empty file.
rm sample_file || echo "Unable to delete temp files"
