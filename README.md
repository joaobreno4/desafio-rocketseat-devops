AWS AppRunner Infrastructure (IaC & CI/CD)
Infraestrutura como Código (IaC) para provisionamento automatizado de serviços na AWS utilizando Terraform e GitHub Actions.

Arquitetura
A solução utiliza o AWS AppRunner para hospedar aplicações containerizadas com foco em escalabilidade e baixo overhead operacional.

Modularização: Estrutura baseada em módulos reutilizáveis (DRY).

Ambientes: Separação lógica entre dev (0.25 vCPU) e prod (1 vCPU).

CI/CD: Pipeline automatizada com estágios de Init, Plan, Apply e Health Check.

Stack Tecnológica
IaC: Terraform

Cloud: AWS (AppRunner, ECR)

CI/CD: GitHub Actions

Security: GitHub Secrets para gestão de credenciais

Estrutura de Diretórios
Plaintext
├── .github/workflows/ # Pipelines de CI/CD
├── terraform/
│   ├── modules/       # Módulos globais
│   └── envs/          # Configurações de Dev/Prod
└── README.md
Implantação
Configurar AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY no GitHub Secrets.

Push para a branch develop (Ambiente de Desenvolvimento).

Push para a branch main (Ambiente de Produção).

📤 Atualizando o GitHub
Salve o arquivo no nano e rode os comandos:

Bash
git add README.md
git commit -m "docs: finalize professional readme"
git push origin main
