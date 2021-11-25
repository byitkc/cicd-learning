# cicd-learning
CI/CD Learning

## /gowebapp

### Building

Here we will cover building the application and docker image

#### Go

To build the web app, just run, from the root of the repository:

```
docker run --rm -v "$PWD/gowebapp":/usr/src/gowebapp -w /usr/src/gowebapp -e GOOS=linux -e GOARCH=amd64 golang:1.17.3 go build -v
```

This will create the required `gowebapp` exec

#### Docker

To build the docker image, just run, from the root of the repository:

```
docker build -t {{image_name}} .
```

### Running

To run the webserver and enabled access, just run

```
docker run -it --rm -p 3000:3000/tcp --name my-test-golang-app {{image_name}}
```