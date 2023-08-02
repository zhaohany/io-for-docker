# io-for-docker - An Open Source Docker Image for IO Benchmark Testing

## Overview

**io-for-docker** is an open-source Docker image designed for IO benchmark testing using [FIO](https://fio.readthedocs.io/en/latest/index.html), a flexible I/O tester and benchmark tool. The image supports both **runq** and **runc** Docker runtime environments(And any runtime support docker) and allows for sequential read, sequential write, random read, and random write IO testing.

## Usage

### 1. Edit the Jobfile

Before running the benchmark test, you need to customize the FIO jobfile according to your specific requirements. The jobfile defines the parameters and characteristics of the IO operations to be tested.

### 2. Build the Docker Image

To build the **io-for-docker** image, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/your-username/io-for-docker.git
cd io-for-docker
mkdir hostmount
```

2. Build the Docker image:
```bash
docker build -t io-for-docker .
```

### 3. Run the Benchmark Test

To perform the IO benchmark testing with **io-for-docker** in the desired Docker runtime, use one of the following commands:

**Using runq runtime:**
```bash
docker run --runtime=runq -v $(pwd)/hostmount:/vmmount --rm io-for-docker
```

**Using runc runtime:**
```bash
docker run --runtime=runc -v $(pwd)/hostmount:/vmmount --rm io-for-docker
```

## Debugging

In case you encounter any issues during the benchmark testing, you can log into the container's bash to view the standard output and inspect the container environment.

To access the container's bash, follow these steps:

1. First, find the container ID or name by running the following command to list all running containers:

```bash
docker ps
```

2. Locate the container ID or name associated with the **io-for-docker** image.

3. Use the `docker exec` command to log into the container's bash:

```bash
docker exec -it CONTAINER_ID_OR_NAME /bin/bash
```

Replace `CONTAINER_ID_OR_NAME` with the actual container ID or name from the previous step.

You will now have access to the container's bash prompt, where you can inspect the logs, files, and run commands to diagnose and troubleshoot any issues.

Remember to exit the container's bash when you have finished debugging:

```bash
exit
```

## View the Results

After the benchmark test is complete, detailed results from FIO will be printed out to the console. Analyze the results to understand the performance of the IO operations.

## Clean Up Space

To clean up space and remove the contents of the "hostmount" directory, use the following command:
```bash
rm -r ./hostmount/*
```

**Note:** Be cautious while using this command, as it will remove all files and directories in the "hostmount" directory. Ensure you have taken appropriate precautions to avoid unintended data loss.

Additionally, you can prune unused Docker data to free up disk space:
```bash
docker system prune --volumes
```

## Known Issues

There is a known issue with FIO being unable to open the "jobfile.fio" jobfile. The **io-for-docker** repository is actively working to address this issue, and updates will be provided as they become available.

## Next Steps

The **io-for-docker** project is continuously improving, and the following features are planned for future releases:

- Result Export: Enhance the tool to allow users to export benchmark results in different formats for further analysis and comparison.
- Result Visualization: Develop a visualization component to present benchmark results in a more intuitive and accessible manner.

We welcome contributions from the community to help achieve these goals and make **io-for-docker** an even more powerful and useful tool for IO benchmark testing in Docker environments. Please feel free to provide feedback, report issues, or contribute to the project! Happy benchmarking!