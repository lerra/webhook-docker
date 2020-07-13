# webhook-docker
https://github.com/adnanh/webhook running on a ubuntu 20.04 docker image
## Why
https://github.com/almir/docker-webhook was to light weight and slim for me to be able to run my deployment scripts inside (missing git, bash etc) of the container. 
## Example deployment inside of the container
My use case is to have github actions to build my static website https://lezg.in with hugo and then commit the static files to a branch. As I focus on the security part, I don't want any scp or similar remote access to my system. Instead iI found the project webhook that can trigger scripts. So I focused to only trigger a static script with no parameters even if that is possible with webhook and to run a git clone of a branch when the the webhook from github actions when its completed (even if I get one at start and complete).
## Setup on github side
To start with, you need to setup github to send a webhook when the github action starts and is completed, not possible at this stage to only get it at complete. Go to the repo you want to get the notification from and into the repo settings, menu webhook and then add webhook. Make sure to set content type to application/json and I strongly recommend to use https and to set a secret there (and the same one in your hooks.json file). Then check the "Let me select individual events." and the only checkbox should be "Check runs" if you want to follow my example.
# How to use docker container
Make sure to be in the same dir where you have checkout this repo
## Building the container
In the directory, run docker-compose build (i use version 1.25.5) to build the image.
## Running the container
docker-compose up
## Debug the container
docker logs webhook -f if you want to see the verbose output
## Stop the container 
docker-compose down 
