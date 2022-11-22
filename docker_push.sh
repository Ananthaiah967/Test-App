aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 237040306463.dkr.ecr.eu-central-1.amazonaws.com
docker build -t test .
docker tag test:latest 237040306463.dkr.ecr.eu-central-1.amazonaws.com/test:latest
docker push 237040306463.dkr.ecr.eu-central-1.amazonaws.com/test:latest
