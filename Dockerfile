FROM python:slim-bullseye
COPY ./oci-cli-installation /
RUN apt-get update && apt-get dist-upgrade -y && apt-get install --no-install-recommends curl -y
RUN bash /install.sh --accept-all-defaults --install-dir /oci-cli --exec-dir /usr/local/bin/ --script-dir /oci-cli/scripts
WORKDIR /oci-cli
ENTRYPOINT ["/usr/local/bin/oci"]

