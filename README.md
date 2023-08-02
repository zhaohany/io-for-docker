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
runq runtime
```bash
docker run --runtime=runq -v $(pwd)/hostmount:/vmmount --rm io-for-docker
```
runc runtime
```bash
docker run --runtime=runc -v $(pwd)/hostmount:/vmmount --rm io-for-docker
```
## Debug


## View the result


## Clean up space
```bash
rm -r ./hostmount/*
```

```diff
- Be Careful, this might remove your other project!
```
```bash
docker system prune --volumes
```

## Known Issues
fio unable to open "jobfile.fio" jobfile