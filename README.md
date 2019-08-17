# terraform-heroku-cpnatal

* Criar conta no GitHub (https://github.com)

* Criar conta no heroku (https://signup.heroku.com)

* Criar ambiente virtual no python:
    * Instalando virtualenv
    
        `$ sudo apt-get install python3-pip`
        
        `$ sudo pip3 install virtualenv`
        
    * Criando ambiente virtual
        
        `$ virtualenv -p python3 cpnatal`

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
        
* Clonar a aplicação que será feito deploy
    * O clone é apenas didático, para olhar a aplicação
    
    `$ git clone `           
      
     
 
