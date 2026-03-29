AWS AppRunner Infrastructure (IaC & CI/CD)
Este projeto demonstra a automação completa de infraestrutura na AWS utilizando Terraform para o provisionamento e GitHub Actions para a esteira de CI/CD.

🚀 Arquitetura e Ambientes
A solução utiliza o AWS AppRunner para hospedar aplicações containerizadas de forma agnóstica e escalável. A infraestrutura está dividida em dois ambientes distintos para garantir a segurança e o controle de custos:

Recurso	Ambiente Development (Dev)	Ambiente Production (Prod)
Instância	0.25 vCPU	1 vCPU
Memória	0.5 GB	2 GB
Porta	8080	8080
Auto-Deploy	Desabilitado (Manual via CI)	Desabilitado (Manual via CI)
🛠️ Stack Tecnológica
IaC: Terraform (Modularizado)

Cloud: AWS (AppRunner, IAM, ECR Public)

CI/CD: GitHub Actions (Workflows automatizados)

Padrão de Container: OCI Compliant

📂 Estrutura de Diretórios
Plaintext
├── .github/workflows/
│   └── deploy.yml      # Pipeline de automação
├── terraform/
│   ├── modules/
│   │   └── app_runner/ # Módulo reutilizável de infra
│   └── envs/
│       ├── dev/        # Variáveis e estado de Desenvolvimento
│       └── prod/       # Variáveis e estado de Produção
└── README.md
⚙️ Como Implantar
Configure as chaves AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY no GitHub Secrets.

Realize o push para a branch main.

A pipeline executará automaticamente o Terraform Plan e o Terraform Apply para ambos os ambientes.

📤 Comandos para atualizar o GitHub agora:
No seu terminal, dentro da pasta do projeto, rode:

Bash
git add README.md
git commit -m "docs: update readme with dev/prod comparison"
git push origin main
