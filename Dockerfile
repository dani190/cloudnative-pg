FROM ghcr.io/cloudnative-pg/postgresql:17.5

# drop to root to install packages
USER root
ADD https://github.com/tensorchord/pgvecto.rs/releases/download/v0.3.0/vectors-pg17_0.3.0_arm64_extensions.deb ./pgvectors.deb
RUN apt install ./pgvectors.deb

USER postgres

