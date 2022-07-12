# straf_deploy

Material for the deployment of the STRAF application.

### Build docker image

```
docker build -t agouy/straf:0.0.3 .
docker push agouy/straf:0.0.3
```

### Run the app

```
docker container run -d -p 80:3838 agouy/straf:0.0.3
```