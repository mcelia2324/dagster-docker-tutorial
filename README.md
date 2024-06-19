# Dagster Docker Tutorial

## Introduction

Welcome to the Dagster Docker Tutorial! This repository provides a hands-on introduction to setting up a basic data pipeline using Dagster within Docker containers. Dagster is a powerful data orchestrator tool designed for building, running, and observing data pipelines. Docker enhances this by offering an isolated and consistent environment, making your pipelines portable and scalable. This tutorial will guide you through the process of setting up a simple data pipeline using Dagster within a Docker container and print "Hello, World!" to the console."

## Prerequisites

Before diving into this tutorial, ensure you have the following installed on your machine:

- Docker and Docker Compose
- Python 3.11 or higher

A basic understanding of Python programming, Docker containerization, and data pipeline concepts will be helpful.

## Setup Instructions

### Clone the Repository

Start by cloning this repository to your local machine:

```bash
git clone https://github.com/mcelia2324/dagster-docker-tutorial

cd dagster-docker-tutorial
```

### Build the Docker Image

Next, build the Docker image using the provided `Dockerfile`:

```bash
docker build -t dagster-tutorial .
```

### Start the Docker Container

Once the image is built, start the Docker container:

```bash
docker compose up -d
```

### Access the Dagster UI

Open your browser and navigate to `http://localhost:3000` to access the Dagster UI. You should see the Dagster dashboard with the tutorial repository loaded.
