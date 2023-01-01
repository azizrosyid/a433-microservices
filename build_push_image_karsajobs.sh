orbs:
  docker: circleci/docker@2.2.0

version: 2.1

jobs:
  build:
    docker:
      - image: alpine:3.15
    steps:
        - checkout
        - run:
            name: lint-dockerfile
            command: |
                docker run --rm -i hadolint/hadolint < Dockerfile

workflows:
  version: 2
  build-and-deploy:
    jobs:
      - build