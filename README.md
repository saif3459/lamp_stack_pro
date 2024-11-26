# Server Setup and Maintenance Scripts

This project contains a set of Bash scripts used for server setup, configuration, maintenance, and management tasks. These scripts are designed to automate common server operations, including firewall configuration, health checks, LAMP stack installation, MySQL backups, and SSL certificate renewal.

## Project Files

Below is a list of the key scripts in this project:

### 1. `firewall_setup.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Configures the firewall on the server, setting up necessary rules and policies for security.

### 2. `health_check.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Performs system health checks and reports on key server metrics to ensure the system is running optimally.

### 3. `lamp_stack_setup.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Automates the installation and configuration of a LAMP (Linux, Apache, MySQL, PHP) stack on the server.

### 4. `mysql_backup.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Creates a backup of the MySQL databases, which can be used for restoration in case of data loss.

### 5. `ssl_install.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Installs SSL certificates for secure HTTPS connections.

### 6. `ssl_renew.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Renews SSL certificates before they expire to maintain secure connections.

### 7. `ssl_renew_cron.sh`
- **Last Updated**: 26-Nov-2024
- **Description**: Schedules SSL certificate renewal using cron jobs to automate the process.

## Prerequisites

- A Linux-based server (e.g., Ubuntu, CentOS).
- Administrative access (root or sudo privileges) to run these scripts.
- Bash shell installed (default in most Linux distributions).
- Internet connection for downloading necessary packages and certificates.

## Usage

Each script is standalone and can be run independently. To execute a script, simply use the following command:

```bash
bash <script_name>.sh
