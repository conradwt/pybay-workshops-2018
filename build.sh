set -ex

# SET THE FOLLOWING VARIABLES

# docker hub username
USERNAME=conradwt

# image name
IMAGE=python-workshop

# run build
docker build -t $USERNAME/$IMAGE:latest .
