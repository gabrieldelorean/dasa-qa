# dasa-qa RUBY 

## Gerenciadores de pacotes obrigatórios 

* Gerenciador de pacotes ruby  -> bundle https://bundler.io/
* Gerenciador de pacotes javascript -> node https://nodejs.org/en/


### Node.js instalado WEB APP  Localhost

```bash
cd test-qa
```

```bash
npm install
```

### Compilar WEB APP  [http://localhost:8080/](http://localhost:8080/)

```bash
npm run serve
```

# dasa-qa
### Instalando dependencias  

Mac 

```bash
    brew update && \
        brew install build-base \
        libxml2-dev \
        libxslt-dev \
        postgresql-dev \
        curl unzip libexif udev chromium chromium-chromedriver wait4ports xvfb xorg-server dbus ttf-freefont mesa-dri-swrast \
        && rm -rf /var/cache/apk/*  
```


### QA Automation Install

```bash
bundle install    
```

### QA Automation Run 

```bash
bundle exec cucumber tags={@done} -p dasa     
```

### QA Automation  Reports 

   ```bash
log/report.html or log/report.json 
```


# TESTES 
  #### Funcionalidade: Done
    * Ir para a tela de done 
    * Ir para a tela done sem nenhum item
    * Incluir item todo concluir o mesmo e aparecer em done
    * Incluir item todo nao concluir o mesmo nao aparecer em done
    * Verificar se o input de pesquisa funciona
    * Verificar se o input de pesquisa funciona para combinacao de resultados

#### Funcionalidade: Todo
    * Nao se pode adicionar um todo sem texto clique direto no botao add 
    * Limpando input de todo através do botao x 
    * Incluindo um item a lista de todo
    * Incluindo mais de um item a lista de todo
    * concluir um item da lista 
    * concluir a segunda tarefa da lista  todo
    * Excluir uma tarefa de todo
    * Excluir algumas tarefa de todo comecando com a ultima 
   


# BUGS 

   * UI cartoes de tarefas nao sao responsiveis de acordo com o tamanho do texto
   * BUG Excluir uma tarefa de done na Ui ele nao desaparece 
   

  
