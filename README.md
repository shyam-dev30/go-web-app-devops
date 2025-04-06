# 🚀 Go Web App

A lightweight, modular web application built in Go and deployed using Docker, Kubernetes, Helm, GitHub Actions CI/CD, and GitOps with ArgoCD. Designed to run on AWS infrastructure.

---

## 🧰 Tech Stack

- **GoLang**
- **Docker**
- **GitHub & GitHub Actions** (CI/CD)
- **Kubernetes**
- **Helm**
- **ArgoCD** (CD)
- **AWS Services (EC2, IAM, Route53, etc.)**

---

## ✅ Prerequisite

- AWS Account
- Basic knowledge of Git, Docker, Kubernetes

---

## ⚙️ Setup Instructions

### 🖥️ Local/Cloud Environment Setup

1. Use your own machine or launch an EC2 instance (`t2.medium`, Ubuntu).
2. Update the system:
   ```bash
   sudo apt update && sudo apt upgrade -y
3. Clone the repository:
   ```bash
   git clone https://github.com/iam-veeramalla/go-web-app.git
4.Create a separate directory and copy all files:
   ```bash
   mkdir go-web-app && cp -r go-web-app/* go-web-app/
   ```
5.Install GoLang:
  ```bash
  sudo apt install golang-go -y
  ```
6. Run the app locally:
   ```bash
   go run main.go
7.Open browser at http://localhost:8080 to check it's working.
---

### 🐳 Dockerization
8. Install Docker
9. Create a multi-stage Dockerfile to reduce image size.
10. Build and run Docker image
11. Push Docker image to Docker Hub
---

### ☸️ Kubernetes Deployment
12. Create a k8s/ directory and add: deployment.yaml, service.yaml, ingress.yaml
13. Install NGINX Ingress Controller.
14. Apply Kubernetes manifests
---

### 📦 Helm Chart Setup
15. Install Helm
16. Create a Helm chart:
    ```bash
    helm create go-web-app-chart
17. Clean up the Helm chart:- Remove contents of templates/ and values.yaml, Delete the charts/ directory
18. Copy all Kubernetes manifests to the templates/ directory
19. Update values.yaml with image details:
  ```bash
  image:
  repository: <your-dockerhub-username>/go-web-app
  tag: latest
  ```
20. Update Deployment.yaml inside Helm chart:
    ```bash
    image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
21. Install Helm release:
    ```bash
    helm install go-web-app ./go-web-app-chart
22. Uninstall Helm release if needed:
    ```bash
    helm uninstall go-web-app
---

### 🤖 GitHub Actions CI Pipeline
23. Create a GitHub Actions workflow for CI.
24. Add DockerHub credentials in GitHub Secrets.
25. Configure CI pipeline to: Lint and test Go code, Build Docker image, Push image to DockerHub, Update Helm chart with latest tag
    ---

### 🚀 ArgoCD (CD) Setup
26. Install ArgoCD in the cluster.
27. Expose ArgoCD UI using LoadBalancer or NodePort.
28. Get admin password:
    ```bash
    kubectl get secret -n argocd argocd-initial-admin-secret -o yaml
29. Decode the password:
    ```bash
    echo <base64-password> | base64 --decode
30. Login to ArgoCD UI:
   :- Username: admin
   :- Password: (decoded password)
31. Create ArgoCD application pointing to your GitHub repo and Helm chart.
    ---

### 🌐 Domain Setup (Route53 + Ingress)
32. Get LoadBalancer IP from Ingress.
33. Run nslookup to get the IP address.
34. Update /etc/hosts (for local testing)
35. Create Route53 hosted zone in AWS and add A record for your domain.
36. Update nameservers in your domain registrar panel.
37. Access your app at: https://your-domain/courses
    ---

### 👨‍💻 Author
 **Shyam Sahu**
 **GitHub: @shyam-dev30**
---

### 📄 License
This project is licensed under the MIT License














