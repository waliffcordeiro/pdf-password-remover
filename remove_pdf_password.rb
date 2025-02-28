require 'hexapdf'

# Caminhos dos arquivos
PATH_DO_ARQUIVO = File.expand_path("~/Downloads/")
NOME_DO_ARQUIVO = "SEU_ARQUIVO_PDF"
arquivo_original = File.join(PATH_DO_ARQUIVO, "#{NOME_DO_ARQUIVO}.pdf")
arquivo_sem_senha = File.join(PATH_DO_ARQUIVO, "#{NOME_DO_ARQUIVO}_desbloqueado.pdf")

# Senha do PDF
senha = "1234"

begin
  # Abrir o PDF protegido
  doc_original = HexaPDF::Document.open(arquivo_original, decryption_opts: {password: senha})

  # Criar um novo documento sem senha
  doc_novo = HexaPDF::Document.new

  # Copiar todas as páginas do PDF original para o novo documento
  doc_original.pages.each do |page|
    doc_novo.pages << doc_novo.import(page)
  end

  # Salvar o novo documento sem criptografia
  doc_novo.write(arquivo_sem_senha)

  puts "PDF salvo sem senha: #{arquivo_sem_senha}"
rescue HexaPDF::Error => e
  puts "Erro ao remover senha: #{e.message}"
end
