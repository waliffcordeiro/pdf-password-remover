# PDF Password Remover

Este script Ruby utiliza a biblioteca `HexaPDF` para remover a senha de arquivos PDF protegidos. Ele permite que você abra um PDF protegido por senha, copie seu conteúdo e salve o arquivo sem criptografia, facilitando o acesso ao conteúdo do PDF.

## Funcionalidade

- O script abre um arquivo PDF protegido por senha.
- Remove a senha do PDF.
- Salva o PDF em um novo arquivo, sem a senha.

## Como usar

### Pré-requisitos

- Ruby 2.7 ou superior
- A biblioteca `HexaPDF`

### Instalação

1. **Clone o repositório:**

```bash
git clone https://github.com/seu-usuario/pdf-password-remover.git
cd pdf-password-remover
```

2. **Instale a dependência HexaPDF:**

```bash
gem install hexapdf
```

### Configuração

1. Altere as variáveis `PATH_DO_ARQUIVO` e `NOME_DO_ARQUIVO` no script `remove_pdf_password.rb` para o caminho e nome do seu arquivo PDF original.

2. Modifique a variável `senha` para a senha do seu PDF.

```ruby
# Caminhos dos arquivos
PATH_DO_ARQUIVO = File.expand_path("~/Downloads/")
NOME_DO_ARQUIVO = "SEU_ARQUIVO_PDF"
arquivo_original = File.join(PATH_DO_ARQUIVO, "#{NOME_DO_ARQUIVO}.pdf")
arquivo_sem_senha = File.join(PATH_DO_ARQUIVO, "#{NOME_DO_ARQUIVO}_desbloqueado.pdf")

# Senha do PDF
senha = "SUA_SENHA"
```

### Execução

Após a configuração, basta executar o script:

```bash
ruby remove_pdf_password.rb
```

Isso irá gerar um novo arquivo PDF no mesmo diretório, mas sem a senha de proteção.

## Exemplo de uso

Se você tem um arquivo PDF protegido chamado `documento.pdf` com a senha `1234`, após configurar o script com o caminho e a senha corretos, ao rodar o script, ele criará um novo arquivo `documento_desbloqueado.pdf`.
