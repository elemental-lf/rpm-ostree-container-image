FROM registry.fedoraproject.org/fedora:35

RUN dnf upgrade-minimal --nodocs -y && \
      dnf --nodocs -y install --setopt=install_weak_deps=False rpm-ostree && \
      dnf clean all

ENTRYPOINT ["bash", "-c"]
