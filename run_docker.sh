#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
# Step 0: Stop and remove existing container and image
docker stop model-prediction
docker rm model-prediction
docker images rm model-prediction

# Step 1:
# Build image and add a descriptive tag
docker build -t model-prediction .

# Step 2: 
# List docker images
docker images list

# Step 3: 
# Run flask app
docker run -d -name model -p 8000:80 model-prediction