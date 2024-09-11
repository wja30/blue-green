FROM alpine:latest

RUN apk add --no-cache bash curl
RUN curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" | bash
RUN mv kustomize /usr/local/bin/kustomize

RUN kustomize version

ENTRYPOINT ["/bin/bash"]
