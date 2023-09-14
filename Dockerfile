FROM ubuntu:latest

# Create the coder user
RUN useradd -m -s /bin/bash coder && \
    echo 'coder:codeserver' | chpasswd && \
    usermod -aG sudo coder

RUN echo 'root:codeserver' | chpasswd

# Update packages and install necessary tools
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    sudo \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Install Java
RUN apt-get update && apt-get install -y \
    openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/*

# Set Java PATH
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
ENV PATH=$JAVA_HOME/bin:$PATH

#Install python
RUN apt-get update && \
    apt-get install -y python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js (required by Code Server)
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && apt-get install -y nodejs

# Install Visual Studio Code Server
RUN curl -fsSL https://code-server.dev/install.sh | sudo -E bash -

#Set environment for the "coder" user
ENV HOME=/home/coder

# Copy the startup script into the container
COPY startup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/startup.sh

USER coder

# Create the workspace directory
RUN mkdir -p /home/coder/project    

ENTRYPOINT ["bash", "-c", "/usr/local/bin/startup.sh"]