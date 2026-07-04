

# 🚀 Production Flask Application on AWS

A production-ready Flask web application deployed on AWS EC2 using Docker, Docker Compose, Nginx, and GitHub Actions for automated CI/CD.

---

## 📌 Project Overview

This project demonstrates how to deploy a containerized Flask application in a production-style environment using modern DevOps practices.

The application is deployed on an Ubuntu EC2 instance, served by Gunicorn, reverse-proxied by Nginx, and automatically deployed through GitHub Actions whenever changes are pushed to the `main` branch.

---
# 🚀 Production Flask Application on AWS

![Python](https://img.shields.io/badge/Python-3-blue)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![Nginx](https://img.shields.io/badge/Nginx-Reverse_Proxy-green)
![GitHub Actions](https://img.shields.io/badge/CI/CD-GitHub_Actions-success)

## 🏗️ Architecture

![Architecture](images/architecture.png)

```text
                Internet
                    │
                    ▼
        AWS Security Group (HTTP/SSH)
                    │
                    ▼
          Nginx Container (Port 80)
                    │
                    ▼
       Flask + Gunicorn Container
                    │
                    ▼
          Docker Bridge Network
                    │
                    ▼
         Ubuntu EC2 (AWS Cloud)
```

---

## 🛠️ Technologies Used

* Python 3
* Flask
* Gunicorn
* Docker
* Docker Compose
* Nginx
* AWS EC2 (Ubuntu)
* Git
* GitHub
* GitHub Actions
* Linux

---

## ✨ Features

* Production-ready Flask application
* Docker containerization
* Nginx reverse proxy
* GitHub Actions CI/CD
* SSH-based deployment
* Docker Compose orchestration
* AWS EC2 hosting

---

## 📂 Project Structure

```text
production-flask-app/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── app/
│   ├── app.py
│   ├── requirements.txt
│   └── templates/
│       └── index.html
├── nginx/
│   └── default.conf
├── Dockerfile
├── docker-compose.yml
├── deploy.sh
├── .gitignore
└── README.md
```

---

## 🚀 Deployment

Clone the repository:

```bash
git clone git@github.com:murphyola/production-flask-app.git
cd production-flask-app
```

Build and start the application:

```bash
docker compose up --build -d
```

Check the running containers:

```bash
docker compose ps
```

Access the application:

```text
http://<EC2_PUBLIC_IP>
```

---

## 🔄 CI/CD

This project uses GitHub Actions to automate deployment.

Workflow:

1. Push code to the `main` branch.
2. GitHub Actions connects to the EC2 instance using SSH.
3. The deployment script pulls the latest code.
4. Docker Compose rebuilds and restarts the application.

---

## 📈 Future Improvements

* HTTPS with Let's Encrypt
* Custom domain
* Terraform infrastructure provisioning
* Monitoring with Prometheus and Grafana
* Centralized logging
* Kubernetes deployment

---

## 👨‍💻 Author

**Maruf Salaudeen**

DevOps Engineer

GitHub: https://github.com/murphyola

