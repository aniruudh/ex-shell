#!/bin/bash

# -----------------
# VARIABLE NAMING
# -----------------
# Underscore separated (time_to_live)
# All uppercase for Environment/Global variables (TOOL_VERSION)
# All lowercase for local variables (error_message)
# Case sensitive

# Valid names [0-9a-zA-Z_]
# TTL_2, _TTL, T_2_T

# Invalid variable names
# 2_Name, Name!

# -----------
# ASSIGNMENT
# -----------
string_var="Hello World" 			# Strings
num_var=500							# Numbers
boolean_var=true					# Boolean
another_string_var=string_var		# Can assign one variable to another 
another_num_var=num_var+500			# Can use one variable in another
user_name=`whoami`; echo $user_name	# Can assign result of executed commands

# Invalid (no spaces)
# VAR = "value"

# Read only variables
READ_ONLY="Message"
readonly READ_ONLY

# Unsetting variables
message="Hello World"
echo $message
unset message 						# No qualifying $
echo $message

# Local vs Global Variables
vech="Bus"							# Local variable
export VECH="Bus"					# Global variable

# -----------------
# SPECIAL VARIABLES
# -----------------
# $0 -> Filename of current script
# $# -> Number of command-line arguments
# $1, $2... -> 1st, 2nd etc command-line argument
# $@ -> Quoted arguments, $1 $2
# $? -> Exit code of last command
list=`ls -la | wc -l`; echo $?
list=`unknown`; echo $?

