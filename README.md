# webhook-docker
https://github.com/adnanh/webhook running on ubuntu 20.04 with git+certs so you can run scripts inside of docker

Setup github to send a webhook when the github action starts and is completed. Go to settings, webhook, add webhook. Make sure to set content type to application/json and I strongly recommend to set a secret there (and the same one in your hooks.json file). Then check the "Let me select individual events." and the only checkbox should be "Check runs" if you want to follow my example
