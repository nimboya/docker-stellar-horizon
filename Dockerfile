FROM debian:stretch-slim

ARG STELLAR_HORIZON_VERSION="0.13.0"
ARG STELLAR_HORIZON_BUILD_DEPS="wget"

LABEL maintainer="hello@satoshipay.io"

# install stellar horizon
ADD install.sh /
RUN /install.sh

# HTTP port
EXPOSE 8000

ADD entry.sh /
ENTRYPOINT ["/entry.sh"]

CMD ["horizon"]
