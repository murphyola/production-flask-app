# Production Flask Application on AWS

## Overview

This project demonstrates how to deploy a production-ready Flask web application on AWS using Docker, Docker Compose, Gunicorn, and Nginx.

The goal of this project is to showcase modern DevOps practices, including containerization, reverse proxy configuration, cloud deployment, and CI/CD readiness.

---

## Architecture

```
                Internet
                    │
                    ▼
             AWS Security Group
                    │
                    ▼
               Nginx (Docker)
                    │
                    ▼
          Flask + Gunicorn (Docker)
                    │
                    ▼
               Ubuntu EC2 Instance
```

---

## Technologies Used

* Python 3.12
* Flask
* Gunicorn
* Docker
* Docker Compose
* Nginx
* AWS EC2 (Ubuntu)
* Git
* GitHub

---

## Features

* Production-ready Flask application
* Docker containerization
* Docker Compose orchestration
* Nginx reverse proxy
* Clean project structure
* Cloud deployment on AWS EC2
* Ready for GitHub Actions CI/CD
* Ready for HTTPS with Let's Encrypt

---

## Project Structure

```
production-flask-app/
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── templates/
│       └── index.html
├── nginx/
│   └── default.conf
├── Dockerfile
├── docker-compose.yml
├── .gitignore
└── README.md
```

---

## Deployment

Clone the repository:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/production-flask-app.git
cd production-flask-app
```

Build and start the containers:

```bash
docker compose up --build -d
```

Verify that the containers are running:

```bash
docker compose ps
```

Open the application:

```
http://YOUR_PUBLIC_IP
```

---

## Future Improvements

* GitHub Actions CI/CD
* HTTPS with Let's Encrypt
* Custom domain
* Terraform infrastructure deployment
* Monitoring and logging

---

## Author

**Maruf Salaudeen**

DevOps Engineer

AWS | Docker | Linux | GitHub Actions | Terraform | Ansible | Kubernetes

