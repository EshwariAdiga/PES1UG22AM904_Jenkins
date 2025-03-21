FROM jenkins/jenkins:lts
#FROM ubuntu:20.04
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y make && apt-get install -y g++ --fix-missing
# drop back to the regular jenkins user - good practice
RUN apt-get clean && rm -rf /var/lib/apt/lists/* \
    && apt-get update && apt-get upgrade -y \
    && apt-get install -y make g++

USER jenkins






