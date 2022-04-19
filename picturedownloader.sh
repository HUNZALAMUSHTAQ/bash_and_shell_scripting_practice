#! /bin/bash
#downlaoding picture using shell 
echo "Welcome to picture dowloader" 
echo "Pass link as 1st arg "
echo "Original filename will be used to save picture"
curl -O $1
echo "Picture downloaded ..."