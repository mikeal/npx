FROM node:10

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
