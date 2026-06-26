# Magento 2 Production Deployment on AWS using Docker & Docker Compose

## Project Overview

This project demonstrates a production-ready deployment of Magento 2 on AWS using Docker Compose. The environment is configured with Nginx, PHP-FPM, MySQL, Redis, OpenSearch, SSL (Let's Encrypt), and a custom domain.

The objective of this project is to showcase real-world DevOps practices including containerization, web server configuration, caching, search engine integration, HTTPS, production optimization, and CI/CD readiness.

---

## Architecture

```
                    Internet
                         |
                    GoDaddy DNS
                         |
                 pittylittle.shop
                         |
                    AWS EC2 (Ubuntu)
                         |
                 Docker Compose Stack
                         |
     -------------------------------------------------
     |        |         |          |                |
   Nginx   PHP-FPM    MySQL      Redis       OpenSearch
                         |
                     Magento 2
```

---

## Tech Stack

| Component | Version |
|----------|---------|
| AWS EC2 | Ubuntu |
| Docker | Latest |
| Docker Compose | Latest |
| Magento | 2.4.x |
| PHP | 8.3 |
| MySQL | 8.0 |
| Redis | Latest |
| OpenSearch | 2.x |
| Nginx | Alpine |
| SSL | Let's Encrypt |
| Domain | GoDaddy |

---

## Features

- Dockerized Magento 2
- Docker Compose orchestration
- Nginx Reverse Proxy
- PHP-FPM
- MySQL Database
- Redis Cache
- OpenSearch Integration
- Production Mode
- HTTPS using Let's Encrypt
- Custom Domain Configuration
- Magento Cron Jobs
- Database Backup
- Optimized Docker Networking

---

## Project Structure

```
magento-stack/
│
├── docker-compose.yml
├── README.md
├── nginx/
│   └── default.conf
├── php/
│   ├── Dockerfile
│   └── conf.d/
├── magento/
├── scripts/
├── docs/
├── cron/
└── certs/
```

---

## Services

| Container | Purpose |
|-----------|---------|
| magento-nginx | Web Server |
| magento-php | PHP-FPM |
| magento-mysql | Database |
| magento-redis | Cache |
| magento-opensearch | Search Engine |

---

## Deployment Steps

1. Launch AWS EC2 instance
2. Install Docker & Docker Compose
3. Clone repository
4. Configure environment variables
5. Start containers

```bash
docker compose up -d
```

6. Install Magento
7. Configure Redis
8. Configure OpenSearch
9. Configure Cron
10. Enable Production Mode
11. Configure Domain
12. Install SSL Certificate

---

## Production Optimizations

- Production Mode Enabled
- Redis Cache
- Full Page Cache
- Static Content Deployment
- Dependency Injection Compilation
- Cron Jobs Configured
- HTTPS Enabled

---

## Security

- HTTPS using Let's Encrypt
- Docker Network Isolation
- Environment Variables
- Sensitive files excluded using `.gitignore`

---

## Backup

Database backup:

```bash
mysqldump -u magento -p magento > backup.sql
```

---

## Useful Commands

Start containers

```bash
docker compose up -d
```

Stop containers

```bash
docker compose down
```

Check running containers

```bash
docker ps
```

Magento cache flush

```bash
php bin/magento cache:flush
```

Magento compile

```bash
php bin/magento setup:di:compile
```

Production mode

```bash
php bin/magento deploy:mode:set production
```

---

## Future Improvements

- Jenkins CI/CD Pipeline
- GitHub Actions
- Prometheus Monitoring
- Grafana Dashboards
- Loki Logging
- Automated Backups
- AWS Load Balancer
- Auto Scaling
- Terraform Infrastructure as Code

---

## Skills Demonstrated

- AWS
- Docker
- Docker Compose
- Magento 2
- Nginx
- PHP
- MySQL
- Redis
- OpenSearch
- Linux
- SSL/TLS
- DNS
- Git
- DevOps
- CI/CD

---

## Author

**Rushikesh Sutar**

DevOps Engineer

---

## License

This project is for learning and demonstration purposes.
