![Logo](https://avatars.githubusercontent.com/u/79948663?s=200&v=4)

![Image](https://drive.google.com/file/d/10Rrs_tnpJ7kEE6-QGe7lWuGOyh-6f0gU/)

# Tech Challenge - FIAP TECH 2024

Este repositório contém o código fonte da infraestrutura em Terraform do banco de dados desenvolvida para o projeto do Tech Challenge referente a pós-graduação da FIAP TECH no ano de 2024:

## Stack utilizada

**Infra:** Terraform e AWS Cloud (RDS)

## Rodando localmente

Clone o projeto:

```bash
  git clone https://link-para-o-projeto
```

Entre no diretório do projeto:

```bash
  cd ftc3-terra-db
```

Instale as dependências e módulos do diretório com o Terraform:

```bash
  terraform init
```

Execute o comando de `plan` para criar um preview das alterações:

```bash
  terraform plan
```

Execute o comando de `apply` para aplicar as alterações e subir a aplicação:

```bash
  terraform apply
```

## Documentação

### Arquivos na raiz

-  **main.tf**: Arquivo principal do Terraform que orquestra a criação da infraestrutura.
-  **variables.tf**: Arquivo de definição de variáveis.
-  **outputs.tf**: Arquivo de defenição de saídas da configuração.
-  **readme.md**: Arquivo com a documentação do projeto.

## Autores

-  [@Bruno Campos](https://github.com/brunocamposousa)
-  [@Bruno Oliveira](https://github.com/bgoulart)
-  [@Diógenes Viana](https://github.com/diogenesviana)
-  [@Filipe Borba](https://www.github.com/filipexxborba)
-  [@Rhuan Patriky](https://github.com/rhuanpk)
