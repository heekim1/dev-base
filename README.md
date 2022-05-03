# dev-base

The base image definition for all heekim1 docker images. The Docker images are mostly used by Nextflow-based pipelines that the Bioinformatics team runs for analysis as well as product development. Theis is the base image for other sub components.

## OS Upgrade Procedure

In order to maintain consistency across development projects as well as product releases, we would need to ensure that the environments across these 2 domains are consistent. The most important aspect of that entails an operating system (OS) upgrade.

In order to upgrade the OS for all the Docker images used by aberration callers, software dependencies etc, this repository is the starting point. 

Steps to upgrade the base Docker image OS:

* Modify the [`Dockerfile`](Dockerfile) so that it contains the new base image definition. You may be able to find documentation about editing Dockerfiles [here](https://lmgtfy.com/?q=dockerfiles).
* Update the artifact `version` in the [`pom.xml`](pom.xml)
* After the changes have been approved following the peer review process, create a git tag to match the version in the `pom.xml`
* The Jenkins job located [here]() is used for deploying the Docker image to Artifactory
* After the Docker image has been deployed, you will need to update the *wrapper definition* of the base image available [here]()
* Follow instructions on that repository to continue to the next steps

##
test-prcheck4
