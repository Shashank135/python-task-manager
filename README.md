# Python Task Manager

![Docker Logo](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Streamlit Logo](https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=streamlit&logoColor=white)
![Python](https://img.shields.io/badge/python-3.13-blue.svg?style=for-the-badge&logo=python&logoColor=white)

A simple, containerized Python Streamlit web application designed to demonstrate fundamental DevOps concepts including version control, continuous integration, containerization, and container orchestration. This image bundles the Streamlit application and all its dependencies, making it highly portable and easy to deploy across various environments.

## Overview

This Docker image contains a basic "Task Manager" application built with Streamlit. It serves as a practical example for:
* **Containerization:** Packaging a Python web application into a Docker image.
* **CI/CD Pipelines:** Ready for integration into automated build and deployment pipelines (e.g., Jenkins to Docker Hub to Kubernetes).
* **Portability:** Ensuring the application runs consistently regardless of the underlying host environment.

## How to Run This Image

This image can be run locally using Docker or deployed to container orchestration platforms like Kubernetes.

### 1. Pull the Docker Image (Optional - usually done automatically on run)

You can explicitly pull the image if you wish:

```bash
docker pull shashank1321/python-task-manager:latest
```

### 2. Run the Container Locally

To run the Streamlit application as a Docker container on your local machine and access its web interface:

```bash
docker run -p 8501:8501 shashank1321/python-task-manager:latest
```

### 3. Access the Application
Once the container is running, open your web browser and navigate to:

http://localhost:8501

You should see the "My Simple Python Task Manager" web interface.

### 4. Stop the Container
To stop the running container, go to the terminal where the docker run command is executing and press Ctrl + C.

### Technologies Used
* **Python 3.13**: The core programming language.
* **Streamlit**: For creating the interactive web user interface.
* **Docker**: For containerization of the application.

Feel free to explore the repository for Dockerfile details, Kubernetes manifests, Jenkins configurations, and more.
