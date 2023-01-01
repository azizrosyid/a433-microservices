# membuat image docker dengan tag github package registry
docker build -t ghcr.io/azizrosyid/karsajobs:latest .

# login ke github package registry
echo $PASSWORD_GITHUB_PKG | docker login ghcr.io -u azizrosyid --password-stdin

# push image ke github package registry
docker push ghcr.io/azizrosyid/karsajobs:latest