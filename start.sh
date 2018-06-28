# Checando e instalando as gems
bundle check || bundle install
# Inicializando o servidor
bundle exec puma -C config/puma.rb