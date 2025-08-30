FROM ghcr.io/runatlantis/atlantis:latest

# copy a terraform binary of the version you need
USER root
RUN mkdir /home/atlantis/.aws
RUN touch /home/atlantis/.aws/credentials
RUN touch /home/atlantis/.aws/config
