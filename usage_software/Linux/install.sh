# 创建环境路径
sudo apt install -y unzip curl bzip2
mkdir ~/envs
cd ~/envs

# Java
wget -O jdk.tar.gz "https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz" 
tar -zxvf jdk.tar.gz
rm jdk.tar.gz
sed -i '$a \\n#JAVA_HOME\nexport JAVA_HOME=~\/envs\/jdk-11.0.2\nexport PATH=$PATH:$JAVA_HOME\/bin' ~/.profile

# Maven
wget -O maven.tar.gz "https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz" 
tar -zxvf maven.tar.gz
rm maven.tar.gz
sed -i '$a \\n#MAVEN_HOME\nexport MAVEN_HOME=~\/envs\/apache-maven-3.8.4\nexport PATH=$PATH:$MAVEN_HOME\/bin' ~/.profile

# Tomcat
wget -O tomcat.tar.gz "https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz" 
tar -zxvf tomcat.tar.gz
rm tomcat.tar.gz
sed -i '$a \\n#CATALINA_HOME\nexport CATALINA_HOME=~\/envs\/apache-tomcat-9.0.56\nexport PATH=$PATH:$CATALINA_HOME\/bin' ~/.profile

# Gradle
wget -O gradle.zip "https://services.gradle.org/distributions/gradle-6.9.2-bin.zip" 
unzip gradle.zip
rm gradle.zip
sed -i '$a \\n#GRADLE_HOME\nexport GRADLE_HOME=~\/envs\/gradle-6.9.2\nexport PATH=$PATH:$GRADLE_HOME\/bin' ~/.profile


# Go
wget -O go.tar.gz "https://golang.google.cn/dl/go1.17.5.linux-amd64.tar.gz" 
tar -zxvf go.tar.gz
rm go.tar.gz
sed -i '$a \\n#GO_HOME\nexport GO_HOME=~\/envs\/go\nexport PATH=$PATH:$GO_HOME\/bin' ~/.profile

# Rust


# Miniconda
wget -O miniconda.sh "https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh"
bash miniconda.sh -b -f -p ~/envs/conda
rm miniconda.sh
sed -i '$a \\n#CONDA_HOME\nexport CONDA_HOME=~\/envs\/conda\nexport PATH=$PATH:$CONDA_HOME\/bin' ~/.profile

# Node
wget -O node.tar.xz "https://nodejs.org/dist/v16.13.1/node-v16.13.1-linux-x64.tar.xz"
tar -xvf node.tar.xz
sed -i '$a \\n#NODE_HOME\nexport NODE_HOME=~\/envs\/node-v16.13.1-linux-x64\nexport PATH=$PATH:$NODE_HOME\/bin' ~/.profile
rm node.tar.xz

source ~/.profile