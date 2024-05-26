#!/bin/bash 

# Author: Aashish Sharma
# Date Created: 26-05-2024
# Last Modified: NA

# Description: Backs Up Files From /home/testuser1 directory to /home/testuser1/bashprojects directory into a tar file.

# Usage: 

# [c]reate an archive and write it to a [f]ile:

 tar -cvf /home/testuser1/bashprojects/$(date +"%Y-%m-%d_%H-%M-%S").tar /home/testuser1
 echo "Back up of files from home directory is completed."
