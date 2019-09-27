FROM node:12

LABEL version="2.0.0"
LABEL repository="http://github.com/mikeal/npx"
LABEL homepage="http://github.com/mikeal/npx"
LABEL maintainer="Mikeal Rogers <mikeal.rogers@gmail.com>"

LABEL com.github.actions.name="GitHub Action for npx"
LABEL com.github.actions.description="Wraps the npx CLI to call utilities from npm."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

RUN apk --no-cache add openssl git curl openssh-client bash
    
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

RUN echo CWD `pwd` \
    && mkdir /tmp/lfs \
    && cd /tmp/lfs \
    && curl -sLO https://github.com/git-lfs/git-lfs/releases/download/v2.6.0/git-lfs-linux-amd64-v2.6.0.tar.gz \
    && tar -zxf git-lfs-linux-amd64-v2.6.0.tar.gz \
    && ./install.sh \
    && cd / \
    && rm -rf /tmp/lfs
