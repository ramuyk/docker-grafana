# Introduction

This repository provides a `docker-compose.yml` ready-to-use Docker configuration to simplify the deployment of the official Grafana Docker container. For comprehensive details about extra configurations, please refer to the [Grafana official Docker installation guide](https://grafana.com/docs/grafana/latest/setup-grafana/configure-docker/).

## Repository Contents

This repository includes:

- **Docker Compose File**: A `docker-compose.yml` file that configures the Grafana Docker container. Highlights of this setup include:
  - **Persistent Data Storage**: Configures two volumes:
    - `grafana-storage-lib` at `/var/lib/grafana` for storing Grafana data.
    - `grafana-storage-etc` at `/etc/grafana` for storing Grafana configuration files.
    
    This setup ensures that your Grafana configurations and data are preserved when the container is restarted.
  
  - **Security Configuration**: Admin user and password are pre-configured for immediate access.

- **Dockerfile**: Specifies the custom `grafana-prod` Docker image build process. This file includes the installation of the Zabbix plugin for Grafana. Feel free to modify the Dockerfile to incorporate additional plugins as needed.

## Getting Started

### Quick Setup

1. **Clone the Repository**:
   Clone this repository to your local machine using the following Git command:
   ```bash
   git clone https://github.com/ramuyk/docker-grafana.git
   cd docker-grafana
   ```

2. **Build and Start Grafana**:
   Use the following command to build the Grafana image and start the service:
   ```bash
   docker-compose up -d --build
   ```

3. **Access Grafana**:
   Open a web browser and navigate to `http://localhost:10020` to access the Grafana web interface. Log in using the pre-configured admin credentials to start configuring your dashboards.

## Customization

### Updating Grafana

To update Grafana to a newer version, update the Grafana image in the Dockerfile, rebuild the image, and restart the container with the updated configuration.

