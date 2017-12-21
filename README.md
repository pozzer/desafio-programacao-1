# mead

## Demonstração
1. [https://desafio-pozzer.herokuapp.com](https://desafio-pozzer.herokuapp.com)

## Dependências

Para rodar este projeto você precisa ter:

* Ruby 2.4.2 - Você pode usar [RVM](http://rvm.io) ou [rbenv]https://github.com/rbenv/rbenv
* [PostgreSQL](http://www.postgresql.org/)
  * OSX - [Postgress.app](http://postgresapp.com/)
  * Linux - `$ sudo apt-get install postgresql`

## Setup do projeto

1. Instalar as dependências a baixo:
2. `$ git clone git@github.com:pozzer/desafio-programacao-1.git` - Clone o projeto
3. `$ cd desafio-programacao-1` - Entre na pasta do projeto
4. `$ gem install bundle` - Instalar a Gem bundle
5. `$ bundle` - Instalar as gems do projeto
6. `$ rake db:create` - Crie o banco
7. `$ rake db:migrate` - Rode as migrates

Se tudo estiver certo, você pode agora rodar o projeto!

## Rodando o projeto

1. `$ rails s` - Executa o servidor do rails
2. Abra [http://localhost:3000](http://localhost:3000)
