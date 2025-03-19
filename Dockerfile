FROM python:3-slim
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    groff \
    less
ARG SAM_CLI_VERSION
RUN pip install --no-cache-dir aws-sam-cli==${SAM_CLI_VERSION}
ENV SAM_CLI_TELEMETRY=0
WORKDIR /sam
ENTRYPOINT ["sam"]