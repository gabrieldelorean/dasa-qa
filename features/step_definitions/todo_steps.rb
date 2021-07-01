
Então("eu clico no botao de incluir") do
    @todopage.add_button_click
end
  

Quando("eu acesso o app via browser") do
    @todopage.go
end
  
Então("eu nao consigo visualizar nenhum um item") do
    @todopage.list_todo_null
end

Entao("eu adiciono o texto {string} no input da tela de todo") do |string|
    @todopage.add_text_todo(string)
    
end
  
  Então("eu  consigo visualizar {int} item na lista de todo") do |int|
    @todopage.verify_count_list_todo(int)
end


Então("clico em concluir a tarefa {int}") do |int|

@todopage.task_done(int)

end

Então("eu clico no botao de tarefas em done") do
    @todopage.button_done 
end

Entao("eu clico no botao x para apagar o texto do input de todo") do
    @todopage.reset_input_todo
end


Entao("o input da tela todo tem que estar vazio") do
    @todopage.input_todo_empty
  end


Então("clico em excluir a tarefa {int}") do |int|
   @todopage.task_trash(int)
end

Entao("eu clico no botao de tarefas em todo") do
    @todopage.button_todo
end