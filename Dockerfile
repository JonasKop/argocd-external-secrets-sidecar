FROM busybox:1.36@sha256:3fbc632167424a6d997e74f52b878d7cc478225cffac6bc977eedfe51c7f4e79

RUN wget https://github.com/JonasKop/external-secrets-transformer/releases/download/0.1.0/external-secrets-transformer-amd64 
# && \
RUN install -m 0755 external-secrets-transformer-amd64 /bin/external-secrets-transformer

RUN addgroup argocd && adduser -D -u 999 -G argocd argocd

USER argocd

COPY ./cmp-plugin.yaml /home/argocd/cmp-server/config/plugin.yaml

COPY ./discover.sh /bin/discover
