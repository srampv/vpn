#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM centos:latest


# Add files.
COPY  SoftEtherVPN_Stable /root

RUN yum -y install make
RUN yum -y install gcc-c++
RUN yum -y install readline-devel
RUN yum -y install openssl-devel
RUN cd /root
CMD ./configure
CMD ["make"]
CMD ["make install"]
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
