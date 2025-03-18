IMAGE_NAME="cw-dploy"
TAG="latest"

docker build -t $IMAGE_NAME:$TAG .

echo "Docker image built"
