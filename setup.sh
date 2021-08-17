#!/bin/bash
read -p 'Please Enter your Secure Workload API KEY: ' apikey
read -p 'Please Enter your Secure Workload Secret KEY: ' secretkey
read -p 'Please enter your Secure Workload URL (Example: https://tet-pov-rtp1.cpoc.co): ' url
read -p 'Please enter your EXACT BASE TENANT NAME: ' tenant

printf "export TETRATION_SERVER_ENDPOINT=%s\n" $url >> ~/.bashrc
printf "export TETRATION_API_KEY=%s\n" $apikey >> ~/.bashrc
printf "export TETRATION_API_SECRET=%s\n" $secretkey >> ~/.bashrc
printf "export TENANT=%s\n" $tenant >> ~/.bashrc

ansible-playbook autoscope.yaml -v
