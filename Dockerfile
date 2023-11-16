# ----------------------------------------------------------------------------------------
# Font Processor
# ----------------------------------------------------------------------------------------
FROM ubuntu as fonttool
LABEL maintainer="aus der Technik"
LABEL Description="font processor"

# Install OS updates and, if needed
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update && apt-get install -y apt-utils apt-transport-https ca-certificates
RUN apt update \
    && apt dist-upgrade -y
RUN apt install -y \
    woff-tools woff2

ADD scripts/convert.sh /convert.sh

WORKDIR /build
ENTRYPOINT ["/convert.sh"]
