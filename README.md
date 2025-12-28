# Bitcoin Node via Tor

This repository contains the necessary files to create and run a **Bitcoin node** that exclusively uses the **Tor network** for both incoming and outgoing connections. Additionally, the node stores its data locally in the repository, giving you full control over the `bitcoin.conf` configuration file and the node's data.

## Features

- **Tor Network**: The Bitcoin node exclusively uses the Tor network to ensure anonymity and privacy.
- **Local Control**: The node's data and configuration file are stored locally in the repository, allowing for easy customization and backup.
- **Bitcoin Version**: This repository uses **Bitcoin Core version 30.0**.

## Repository Structure

- **`docker-compose.yaml`**: Orchestrates the Docker container for the Bitcoin node.
- **`Dockerfile`**: Defines the Docker image for the Bitcoin node.
- **`bitcoin.conf`**: Configuration file for Bitcoin Core, where you can customize the node's settings.
- **`data/`**: Directory where the node's data (blockchain, mempool, etc.) is stored locally.

## Prerequisites

- **Docker** and **Docker Compose** installed on your system.
- The Tor network must be configured and running on the host machine.
