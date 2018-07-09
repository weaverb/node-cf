# Node + Cloud Foundry CLI

Simple build image with node and cf cli for building and pushing node projects.

## Example usage

0. Create a node project.
0. Run the container and map the project into the container: `docker run --rm -it -v $(pwd):/build  bsweaver/node-cf:6.14`

       Note: if your host is running on a non-debian distro, you will want to remove any package-lock.json and the node_modules folder.

0. In the container run `npm install`  && `cf login` && `cf push`