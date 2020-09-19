# skodaice




# development 
Run the code in the container that can be built from the Dockerfile.   This container has all resources neede to deploy the web site.
from repo route dir
docker build ./
docker tag < imageid > skodaice/deployment:ansible

Run the container with the following command
docker run -it -v ~/.skodaice_aws_credentials:/root/.aws/credentials -v /Users/skoda/git_projects/skodaice:/opt/ansible  skodaice/deployment:ansible /bin/bash

Run the test-playbook.yaml