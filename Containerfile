# Containerfile
FROM registry.fedoraproject.org/fedora-minimal:latest

# Install deps + create non-root user
RUN dnf install -y nodejs git shadow-utils && \
    dnf clean all && \
    useradd -m -s /bin/bash gemini && \
    mkdir -p /app && \
    chown gemini:gemini /app

# Install Gemini CLI globally
RUN npm install -g @google/gemini-cli@latest

# Switch to non-root user
USER gemini
WORKDIR /app

# Environment
ENV GEMINI_DISABLE_KEYTAR=1

# Use gemini directly as entrypoint
ENTRYPOINT ["gemini"]

