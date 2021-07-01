#language: pt

@bugs
Funcionalidade: Bugs 

    Cenario: BUG Excluir uma tarefa de done
        Quando eu acesso o app via browser
        Entao eu adiciono o texto "Gabriel Gomes" no input da tela de todo
        Então  eu clico no botao de incluir
        Então eu  consigo visualizar 1 item na lista de todo
        Então clico em concluir a tarefa 1
        Então eu verifico que a lista em done esta vazia
        Então eu clico no botao de tarefas em done
        Então eu verifico que a lista em done nao esta vazia  
        Então clico em excluir a tarefa 1 concluida em done  
        Então eu verifico que a lista em done esta vazia 


    
    
        
