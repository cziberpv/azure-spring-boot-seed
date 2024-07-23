# Docker Build and Push workflow for maven project

This project demonstrates a simple GitHub Actions workflow to build and push a Docker image to Docker Hub. The workflow is triggered by a push to the `main` branch and performs the following steps:

1. Checks out the repository.
2. Sets up JDK 21.
3. Extracts the project version from `pom.xml`.
4. Logs in to Docker Hub.
5. Builds the Docker image and tags it with `latest` and the extracted version.
6. Pushes both tags to Docker Hub.

## Purpose

The main purpose of this project is to automate the process of building and pushing Docker images to Docker Hub. By using GitHub Actions, this setup ensures that every push to the `main` branch results in a new Docker image being created and uploaded to Docker Hub with appropriate version tagging.

## Required GitHub Secrets and Variables

To use this workflow, you need to configure the following secrets and repository variables in your GitHub repository settings:

### Secrets
- **DOCKERHUB_USERNAME**: Your Docker Hub username.
- **DOCKERHUB_TOKEN**: Your Docker Hub access token.

### Repository Variables
- **DOCKERHUB_IMAGE_NAME**: The name of your Docker image (e.g., `my-docker-image`).

### Setting up Secrets and Variables

1. Go to your GitHub repository.
2. Click on `Settings`.
3. Navigate to `Secrets and variables` -> `Actions`.
4. Click `New repository secret` and add the following secrets:
   - `DOCKERHUB_USERNAME`
   - `DOCKERHUB_TOKEN`
5. Navigate to `Settings` -> `Secrets and variables` -> `Actions` -> `Variables`.
6. Click `New repository variable` and add the following variable:
   - `DOCKERHUB_IMAGE_NAME`

## Project Structure

- **.github/workflows/docker-publish.yaml**: GitHub Actions workflow file.
- **.gitignore**: Git ignore file to exclude unnecessary files from the repository.
- **Dockerfile**: Dockerfile to build the Docker image.
- **pom.xml**: Maven project file containing project version and dependencies.
