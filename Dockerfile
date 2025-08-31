FROM ghcr.io/runatlantis/atlantis:latest

# copy a terraform binary of the version you need
USER root
RUN mkdir -p /home/atlantis/.aws && \
	touch /home/atlantis/.aws/credentials && \
	touch /home/atlantis/.aws/config && \
	chown -R atlantis:atlantis /home/atlantis/
USER atlantis
