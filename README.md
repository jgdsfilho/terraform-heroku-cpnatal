# terraform-heroku-cpnatal

* Criar conta no GitHub (https://github.com)

* Criar conta no heroku (https://signup.heroku.com)

* Instalar heroku:
    * A instalação dependerá do SO utilizado. https://devcenter.heroku.com/articles/heroku-cli
    
* Logar no heroku na CLI
    * Após o comando abaixo o browse será aberto para ser realizado o login
       
       `$ heroku login`
      
* Instalar o terraform
    * A instalação também depende do SO. https://developers.cloudflare.com/terraform/getting-started/installing/
    
        `$ wget -q https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip`
        
        `$ unzip terraform_0.12.6_linux_amd64.zip` 
        
        `$ mv terraform /usr/local/bin/terraform`
    * Verificando a instalação:
        
        `$ terraform version`
        
* Setar as credenciais do heroku para a utilização do terraform
    * Gerando o token com heroku:
        
        `$ heroku authorizations:create --description nome_app`
        
    * Configurando variáveis de ambiente para o token e email, necessário na autenticação:
        
        `$ export HEROKU_API_KEY=<TOKEN>`
 
        `$ export HEROKU_EMAIL=<EMAIL>`
        
     * Iniciando o terraform para fazer o download do provider do heroku
     
        `$ terraform init`

* Clonar a aplicação que será feito deploy
    * O clone é apenas didático, para olhar a aplicação
    
    `$ git clone https://github.com/jgdsfilho/cpnatal19.git`
     
* Criando terraform para provisionar um novo aplicativo
    * Baixar o aquivo main.tf que etá no repositório do tutorial
    
    * Executar o comando que irá provisionar o seu app na nuvem:
        
        `$ terraform apply -var example_app_name=nome_que_vc_quer_para_app`