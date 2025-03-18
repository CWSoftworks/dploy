IMAGE_NAME="cw-dploy"
TAG="latest"
DOCKERHUB_USERNAME="your_dockerhub_username"

# Build the Docker image
docker build -t $IMAGE_NAME:$TAG .

# Log in to Docker Hub
docker login

# Tag the image for Docker Hub
docker tag $IMAGE_NAME:$TAG $DOCKERHUB_USERNAME/$IMAGE_NAME:$TAG

# Push the image to Docker Hub
docker push $DOCKERHUB_USERNAME/$IMAGE_NAME:$TAG

echo "Docker image pushed to Docker Hub: $DOCKERHUB_USERNAME/$IMAGE_NAME:$TAG"
