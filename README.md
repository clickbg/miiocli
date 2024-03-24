# miiocli


[![CICD](https://github.com/clickbg/miiocli/workflows/CICD/badge.svg?branch=main)](https://github.com/clickbg/miiocli/actions/workflows/cicd.yaml)
[![UPDATE](https://github.com/clickbg/miiocli/workflows/UPDATE/badge.svg?branch=main)](https://github.com/clickbg/miiocli/actions/workflows/update.yaml)
[![PUBLISH](https://github.com/clickbg/miiocli/workflows/PUBLISH/badge.svg)](https://github.com/clickbg/miiocli/actions/workflows/publish.yaml)

<img src="https://www.docker.com/wp-content/uploads/2022/03/vertical-logo-monochromatic.png" width="20" height="20"> [Avaliable on DockerHub](https://hub.docker.com/r/clickbg/miiocli)

Docker images containg miiocli from https://github.com/rytilahti/python-miio  
The container is being automatically upgraded for new Python versions which will also update miiocli.  
Depending on interest I might start doing numbered releases, if you have a need for specific version of miiocli please let me know.  
For the time being I am releasing latest only since a version build takes up to 2h.  

**Usage**
--
Command Line:

    docker run --rm --name miiocli clickbg/miiocli:latest miiocli --help
