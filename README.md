# Introduction

This repository provides a `docker-compose.yml` ready-to-use Docker configuration to simplify the deployment of the official Grafana Docker container. For comprehensive details about extra configurations, please refer to the [Grafana official Docker installation guide](https://grafana.com/docs/grafana/latest/setup-grafana/configure-docker/).

## Repository Contents

This repository includes:

- **Docker Compose File**: A `docker-compose.yml` file that configures the Grafana Docker container. Highlights of this setup include:
  - **Persistent Data Storage**: Configures two volumes:
    - `grafana-storage-lib` at `/var/lib/grafana` for storing Grafana data.
    - `grafana-storage-etc` at `/etc/grafana` for storing Grafana configuration files.
    
    This setup ensures that your Grafana configurations and data are preserved when the container is restarted.
  
- **Dockerfile**: Specifies the custom `grafana-prod` Docker image build process. This file includes the installation of the Zabbix plugin for Grafana. Feel free to modify the Dockerfile to incorporate additional plugins as needed.

## Getting Started

### Important Preliminary Steps

Before starting the quick setup, please note the following adjustments:

1. **Important Note on Port Mapping**: The `docker-compose.yml` file contains a port mapping to `127.0.0.1`, limiting access to the localhost only. To make the service accessible from other machines or publicly, change the IP address in the port mapping. For instance, use `0.0.0.0` to bind to all network interfaces, updating the ports line to `- "0.0.0.0:8088:8088"` for broader network access.

2. **Resource Limits**: The Docker container is configured to use a maximum of 8 GB of RAM and 4 CPU cores, optimizing performance while preventing overutilization of host resources. These settings can be adjusted inside the `docker-compose.yml` file to suit your specific needs or to align with the capabilities of your system.

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
   docker compose up -d --build 
   ```

3. **Access Grafana**:
   Open a web browser and navigate to `http://localhost:10020` to access the Grafana web interface. The pre-configured admin credentials are:

   - **Username**: admin
   - **Password**: admin

   Upon first login with these credentials, the Grafana frontend will prompt you to change them for security reasons. If the credentials have already been customized, you will be logged in directly.

