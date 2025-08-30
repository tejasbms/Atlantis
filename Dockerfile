FROM ghcr.io/runatlantis/atlantis:latest

# copy a terraform binary of the version you need
USER root
RUN mkdir /home/atlantis/.aws && \
	touch /home/atlantis/.aws/credentials && \
	touch /home/atlantis/.aws/config
RUN chown atlantis.atlantis /home/atlantis/ -R
