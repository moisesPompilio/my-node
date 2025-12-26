# Use a lightweight base image
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /bitcoin

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy local binaries into the image
COPY bitcoind /usr/local/bin/bitcoind
COPY bitcoin-cli /usr/local/bin/bitcoin-cli
COPY bitcoin.conf /root/.bitcoin/bitcoin.conf

# Copy the startup script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Expose the default Bitcoin ports
EXPOSE 8332

# Use the script as the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]