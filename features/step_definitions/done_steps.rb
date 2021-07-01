
Então("eu verifico que existe {int} itens em done") do |int|
    @donepage.verify_count_list_done(int)
end



Então("eu verifico que a lista em done esta vazia") do
    @donepage.list_done_null
end

Então("eu verifico que a lista em done nao esta vazia") do
   @donepage.list_done_not_empty
end

Então("eu pesquiso {string} no input da tela de done") do |string|
    @donepage.add_text_done(string)
end
  
Então("eu  consigo visualizar {int} item na lista de done") do |int|
    @donepage.verify_count_list_done(int)
end

Então("clico em excluir a tarefa {int} concluida em done") do |int|
    @donepage.task_trash_done(int)
end

