export HADOOP_CONF_DIR=/etc/hadoop

export HDFS_DATANODE_USER=root
export HDFS_NAMENODE_USER=root
export HDFS_DATANODE_SECURE_USER=root
export HDFS_SECONDARYNAMENODE_USER=root

export YARN_NODEMANAGER_USER=root
export YARN_RESOURCEMANAGER_USER=root

export JAVA_HOME=/usr/java/jdk1.8.0_161
export HADOOP_HOME=/opt/apache/hadoop-3.0.0
export PATH=$PATH:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin