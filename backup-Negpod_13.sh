#!/bin/bash

host="ec1ebc754f75.a5efec7a.alu-cod.online"
username="ec1ebc754f75"
password="ea1d8f222b11d7be18f6"
location="/summative/0524-2024m"

scp -r "$directory" "$username"@"$host":"$location"
