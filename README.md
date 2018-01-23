# hadoop-base

### Commands
* Get shell with hadoop environment by Cloudera
```
docker run \
    --rm \
    --privileged=true \
    --hostname=quickstart.cloudera \
    -p 80:8080 -p 7180:7180 -p 8888:8888 \
    -ti cloudera/quickstart:5.7.0-0-beta /usr/bin/docker-quickstart
```

### Commands
```
docker rm $(docker ps -aq)
docker images -qf "dangling=true"
docker rmi $(docker images -qf "dangling=true")
```


### Refs
* [Hadoop Config](https://hadoop.apache.org/docs/r3.0.0/hadoop-project-dist/hadoop-hdfs/hdfs-default.xml)
* [get-started for cloudera](https://www.cloudera.com/developers/get-started-with-hadoop-tutorial.html)
* [cloudera cm](https://www.cloudera.com/documentation/enterprise/latest/topics/cm_intro_primer.html)
* [cloudera](https://www.cloudera.com/documentation/enterprise/latest/topics/introduction.html)
* [clusterdock](https://github.com/cloudera/clusterdock/blob/master/clusterdock.sh)
* [cloudera signle docker image](https://hub.docker.com/r/cloudera/quickstart/)


### Docs
* https://medium.com/@SnazzyHam/how-to-get-up-and-running-with-clouderas-quickstart-docker-container-732c04ed0280

### Others
* https://github.com/scrapinghub/docker-cloudera-manager
