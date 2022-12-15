# build image from Dockerfile
docker build -t item-app:v1 .
# show all images
docker images
# tag image to push to github package
docker tag item-app:v1 ghcr.io/azizrosyid/item-app:v1
# login to github package
echo $PASSWORD_GITHUB_PKG | docker login ghcr.io -u azizrosyid --password-stdin
# push image to github package
docker push ghcr.io/azizrosyid/item-app:v1