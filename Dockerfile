FROM bash:5.0.7

LABEL version="1.0.0"
LABEL repository="https://github.com/viirya/check_github_action"
LABEL homepage="https://github.com/viirya/check_github_action"
LABEL maintainer="Liang-Chi Hsieh <viirya@gmail.com>"

RUN apk add git

COPY "entrypoint" "/entrypoint"
RUN chmod +x /entrypoint
ENTRYPOINT ["/entrypoint"]
