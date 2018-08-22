# goswift
by: Coleman Word


## Goals
Create a full stack web development environtment that emphasizes the following features:
* Rapid Customization
* Few Dependencies
* Application Portability
* HTML Templating
* Easy Database Connection
* Continuous Integration
* Continuous Delivery

### Download Docker
[https://www.docker.com/get-started]

### Clone this repository
```
git pull https://github.com/ops2go/goswift

```
### Test Build 
```
bats tests/test-env.bats
```
### Build the container image

```
docker build -t goswift .
```
### Run the container
```
docker run -d -p 8080:8080 goswift
```
### Check localhost
```
curl localhost:8080
```
### Remove all containers and images
```
bash clean.sh
```


Image Size: 13.5 mb

Snippets for VSCode available in go.json