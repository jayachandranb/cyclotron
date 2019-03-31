# Cyclotron-svc Docker Image

1. Optional: Create config/config.js from config/config_sample.js and create the default configuration file.

2. Build the image:

        docker build -t cyclotron:svc .

3. You can run the image by using one of the below

        docker run -d -p 8077:8077 cyclotron:svc
        docker run -d -v local/config/dir:/home/node/app/cyclotron-svc/config -p 8077:8077 cyclotron:svc

