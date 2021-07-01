#language: pt

@todo
Funcionalidade: todo
    Nao se pode adicionar um todo sem texto clique direto no botao add 
    Limpando input de todo através do botao x 
    Incluindo um item a lista de todo
    Incluindo mais de um item a lista de todo
    concluir um item da lista 
    concluir a segunda tarefa da lista  todo
    Excluir uma tarefa de todo
    Excluir algumas tarefa de todo comecando com a ultima 
    Ir para a tela de done 

    
    Cenario: Nao se pode adicionar um todo sem texto clique direto no botao add 
        Quando eu acesso o app via browser
        Então  eu clico no botao de incluir
        Então eu nao consigo visualizar nenhum um item

    Cenario: Limpando input de todo através do botao x 
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Entao eu clico no botao x para apagar o texto do input de todo
        Entao o input da tela todo tem que estar vazio 

    Cenario: Incluindo um item a lista de todo
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo

    Cenario: Incluindo mais de um item a lista de todo
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel;Gomes" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 2 item na lista de todo

    
     Cenario: concluir um item da lista 
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo   
        Então clico em concluir a tarefa 1 
        Então eu nao consigo visualizar nenhum um item  

     Cenario: concluir a segunda tarefa da lista  todo
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel;Gomes" no input da tela de todo
        Então eu clico no botao de incluir
        Então eu  consigo visualizar 2 item na lista de todo   
        Então clico em concluir a tarefa 2 
        Então eu  consigo visualizar 1 item na lista de todo  

    
    Cenario: Excluir uma tarefa de todo
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Então eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo   
        Então clico em excluir a tarefa 1 

    Cenario: Excluir algumas tarefa de todo comecando com a ultima 
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel;Gomes;Ferreira;Da;Silva" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 5 item na lista de todo   
        Então clico em excluir a tarefa 5
        Então clico em excluir a tarefa 4
        Então clico em excluir a tarefa 3
        Então clico em excluir a tarefa 2
        Então clico em excluir a tarefa 1

    
    
        
