#language: pt

@done
Funcionalidade: Done
    Ir para a tela de done 
    Ir para a tela done sem nenhum item
    Incluir item todo concluir o mesmo e aparecer em done
    Incluir item todo nao concluir o mesmo nao aparecer em done
    Verificar se o input de pesquisa funciona
    Verificar se o input de pesquisa funciona para combinacao de resultados

    Cenario: Ir para a tela de done 
        Quando eu acesso o app via browser
        Então  eu clico no botao de tarefas em done
    
    Cenario:  Ir para a tela done sem nenhum item
        Quando eu acesso o app via browser
        Então  eu clico no botao de tarefas em done
        Então eu verifico que a lista em done esta vazia

    Cenario:  Incluir item todo concluir o mesmo e aparecer em done
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo
        Então clico em concluir a tarefa 1 
        Então eu nao consigo visualizar nenhum um item  
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done nao esta vazia


    Cenario:  Incluir item todo nao concluir o mesmo nao aparecer em done
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done esta vazia

     Cenario: Verificar se o input de pesquisa funciona
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel Gomes; Gab QA;Dasa" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 3 item na lista de todo
        Então clico em concluir a tarefa 3
        Então clico em concluir a tarefa 2
        Então clico em concluir a tarefa 1
        Então eu verifico que a lista em done esta vazia
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done nao esta vazia
        Então eu pesquiso "Gabriel" no input da tela de done
        Então eu  consigo visualizar 1 item na lista de done
    
    Cenario: Verificar se o input de pesquisa funciona para combinacao de resultados
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel Gomes; Gab QA;Dasa" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 3 item na lista de todo
        Então clico em concluir a tarefa 3
        Então clico em concluir a tarefa 2
        Então clico em concluir a tarefa 1
        Então eu verifico que a lista em done esta vazia
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done nao esta vazia
        Então eu pesquiso "Gab" no input da tela de done
        Então eu  consigo visualizar 2 item na lista de done

    Cenario: Excluir uma tarefa de done
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel Gomes" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo
        Então clico em concluir a tarefa 1
        Então eu verifico que a lista em done esta vazia
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done nao esta vazia  
        Então clico em excluir a tarefa 1 concluida em done  
        Entao eu clico no botao de tarefas em todo 
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done esta vazia 


    
    
        
