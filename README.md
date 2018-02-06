# Qore in Docker

## Build the image

```
docker build -t qore:fedora-27 images/fedora-27
```

optionally tag the image as latest

```
docker tag qore:fedora-27 qore:latest
```


## Usage

Either run directly qore
```
docker run --rm qore:latest qore --help
```
```
docker run --rm qore:latest qore -ne 'printf("%N\n", {"hello": "world"});'
```

or start bash with qore installed

```
docker run -it --rm qore:latest bash
```

see the example dir for a bash script that may help you and possibly create a bash alias

```
alias qore_docker="~/qore_docker/run.sh latest"
```

then simply run the alias
```
[~] $ qore_docker -nX 'replace("qore is bad", "bad", "the best")'
"qore is the best"
```
