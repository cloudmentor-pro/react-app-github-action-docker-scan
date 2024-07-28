# react-app-github-action-docker-scan

## Run Github action workflow
1. fork this repo
2. Clone repo
3. Create new branch: `git checkout -b feature/test-something`
4. Commit and push
5. Create pull request to main branch
6. Check github action run and Scan result

## Test Trivy scan local
### Requirement
- Docker local installed

### How to Trivy Scan
1. At react app workdir (containr Dockerfile)
2. Build docker image: `docker build -t react-app .`
3. Trivy Scan: `docker run -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:0.53.0 image react-app`

### How to make Docker images show vulnerabilities
- Change docker base image to old version: `FROM node:12-alpine`
