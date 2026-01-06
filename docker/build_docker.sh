# execute from root folder

export REPO_NAME='tso500_cnv_tool'
export TAG='v1.0.0'

# build as linux/amd64 otherwise you'll build the MacOs Arch!
# also tags the image
docker buildx build --platform linux/amd64 -t ghcr.io/umcugenetics/$REPO_NAME:$TAG -f docker/Dockerfile .

# push
docker push ghcr.io/umcugenetics/$REPO_NAME:$TAG