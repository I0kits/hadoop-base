FROM wangwii/systemd-sshd-jdk:latest
LABEL maintainer "Wang Wei - https://github.com/wangwii"

# Install Hadoop
ENV HADOOP_VERSION="3.0.0"
ENV HADOOP_PACKAGE="hadoop-${HADOOP_VERSION}"
ENV HADOOP_HOME="/opt/apache/${HADOOP_PACKAGE}"

RUN curl -kL -o \
        "${HADOOP_PACKAGE}.tar.gz" \
        "http://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/${HADOOP_PACKAGE}/${HADOOP_PACKAGE}.tar.gz" && \
    mkdir -p "${HADOOP_HOME}" && \
    tar -xzf "${HADOOP_PACKAGE}.tar.gz" -C "${HADOOP_HOME}/../"

# Cleanup
RUN yum clean all && \
    rm -rf /var/cache/yum "$JAVA_HOME/"*src.zip \
        "${HADOOP_PACKAGE}.tar.gz" "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm"

ENV JAVA_HOME="/usr/java/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}"
ENV PATH=$JAVA_HOME/bin:$PATH:${HADOOP_HOME}/bin:${HADOOP_HOME}/sbin

# Prepare config files
RUN mkdir -p \
    /etc/hadoop \
    /var/hadoop/tmp \
    /var/hadoop/hdfs/namenode \
    /var/hadoop/hdfs/datanode

COPY config/ /etc/hadoop/
COPY scripts/ /etc/hadoop/
COPY services/ /etc/systemd/system/

RUN systemctl enable hdfs.service
RUN systemctl enable yarn.service
RUN chmod a+x /etc/hadoop/hdfs.sh /etc/hadoop/yarn.sh

EXPOSE 22 8088 9870
