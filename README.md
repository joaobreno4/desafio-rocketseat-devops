AWS AppRunner Infrastructure (IaC & CI/CD)
Este projeto demonstra a automação completa de infraestrutura na AWS utilizando Terraform para o provisionamento e GitHub Actions para a esteira de CI/CD.

Comparativo de Ambientes
Ambiente de Desenvolvimento (Dev)

Instância: 0.25 vCPU

Memória: 0.5 GB

Porta: 8080

Auto-Deploy: Desabilitado (Manual via CI)

Ambiente de Produção (Prod)

Instância: 1 vCPU

Memória: 2 GB

Porta: 8080

Auto-Deploy: Desabilitado (Manual via CI)

Stack Tecnológica
IaC: Terraform (Modularizado)

Cloud: AWS (AppRunner, IAM, ECR Public)

CI/CD: GitHub Actions (Workflows automatizados)

Padrão de Container: OCI Compliant

Estrutura de Diretórios
Plaintext
├── .github/workflows/
│   └── deploy.yml      # Pipeline de automação
├── terraform/
│   ├── modules/
│   │   └── app_runner/ # Módulo reutilizável de infra
│   └── envs/
│       ├── dev/        # Estado de Desenvolvimento
│       └── prod/       # Estado de Produção
└── README.md
⚙️ Como Implantar
Configure as chaves AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY no GitHub Secrets.

Realize o push para a branch main.

A pipeline executará automaticamente o Terraform Plan e o Terraform Apply para ambos os ambientes.

Como atualizar no terminal:
nano README.md (limpe o arquivo e cole o texto acima).

Ctrl+O e Enter para salvar.

Ctrl+X para sair.

Execute os comandos:

Bash
git add README.md
git commit -m "docs: finalize professional readme without tables"
git push origin main
