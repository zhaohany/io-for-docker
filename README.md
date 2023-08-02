# io-for-docker
A Open Source Docker Image for IO Benchmark Testing

## Edit the jobfile
Reference: https://fio.readthedocs.io/en/latest/index.html


## Build docker image
Reference: https://docs.docker.com/engine/reference/commandline/build/
```bash
cd io-for-docker
docker build -t io-for-docker .
```
## Run the Benchmark Test

```bash
docker run --runtime=runq --rm hello-world
```

## VIew the result