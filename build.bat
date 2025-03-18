@echo off
set IMAGE_NAME=cw-dploy
set TAG=latest

docker build -t %IMAGE_NAME%:%TAG% .

echo Docker image built
