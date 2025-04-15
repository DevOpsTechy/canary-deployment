# 🟦🟩 Canary Deployment with Docker Compose

This project demonstrates a practical example of **Canary Deployment** using **Docker Compose**. It aims to show how you can deploy new versions of your application with zero downtime using simple tools.

## 📌 What is Canary Deployment?

**Canary Deployment** is a release management strategy that reduces downtime and risk by running two production environments:


## 🚀 Tech Stack

- Docker
- Docker Compose
- Nginx (for reverse proxy and routing)
- Simple html page (as an example web app)

---

## 📂 Project Structure
```bash
canary-deployment/
├── app-canary
│   └── index.html
├── app-stable
│   └── index.html
├── auto_update_weights.sh
├── docker-compose.yml
├── monitor.sh
├── nginx
│   ├── default.conf
│   └── default.template.conf
├── README.md
└── update_weights.sh 
```


---

## ⚙️ How to Use

### 1. Clone the Repo

```bash
git clone https://github.com/DevOpsTechy/canary-deployment.git
cd canary-deployment

docker-compose up -d
```

### 2. To Change deployment from blue to green or vice-versa run script.
```bash
./update_weights.sh 90 10
```
## 🙌 Contributions

Contributions are welcome! Open a pull request or raise an issue if you have ideas to improve this project.
---

## 📄 License

This project is licensed under the MIT License.


Happy shipping 🚀
