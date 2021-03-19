FROM centos
WORKDIR /opt
RUN yum install wget -y
RUN wget https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u282-b08/OpenJDK8U-jdk_x64_linux_hotspot_8u282b08.tar.gz
RUN wget https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz 
RUN  wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz 
RUN  tar -zxvf OpenJDK8U-jdk_x64_linux_hotspot_8u282b08.tar.gz
RUN  tar -zxvf apache-tomcat-8.5.64.tar.gz
RUN  tar -zxvf apache-maven-3.6.3-bin.tar.gz
RUN  mv jdk8u282-b08 java8
RUN  mv apache-tomcat-8.5.64 tomcat8
RUN  mv apache-maven-3.6.3 maven3
RUN  yum install git -y
RUN  echo "export JAVA_HOME=/opt/java8" >> /etc/profile && echo "export PATH=$PATH:/opt/java8/bin" >> /etc/profile
RUN  echo "export M2_HOME=/opt/maven3" >> /etc/profile && echo "export PATH=$PATH:/opt/maven3/bin" >> /etc/profile
RUN  source /etc/profile
