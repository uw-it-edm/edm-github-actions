FROM hashicorp/terraform:0.11.13 as terraform

FROM python:3.7-alpine

LABEL "name"="docker-pre-commit"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="pre-commit run all"
LABEL "com.github.actions.description"="run pre-commit against the whole repo"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="white"

RUN apk add --no-cache \
    jq \
    curl \
    git \
    bash

COPY --from=terraform /bin/terraform /bin/terraform


RUN pip install pre-commit
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]