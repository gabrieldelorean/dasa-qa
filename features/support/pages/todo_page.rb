require 'capybara/rspec/matchers'
require 'rspec'

class TodoPage < BasePage
  include Capybara::RSpecMatchers
  include RSpec::Matchers

  def initialize
   @movie_list = "table tbody tr"
   @button_submit = "button[type='submit']"
   @list = '//*[@id="app"]/section/ul/li'
   @input = '//*[@id="app"]/section/ul/li/input'
   @firstTask = '//*[@id="app"]/section/ul/li/button/i'
   @doneMenu = '//*[@id="app"]/nav/a[2]'
   @todoMenu = '//*[@id="app"]/nav/a[1]'
   @resetInput = '//*[@id="app"]/section/form/button[1]'
   @session = Capybara.current_session
  end

  def go
    @session.visit "/"
  end

  def add_button_click
    @session.find(@button_submit).click
  end

  def list_todo_null
    page.should have_no_xpath(@list)
  end

  def list_todo_not_empty
    page.should have_xpath(@list)
  end

  def verify_count_list_todo(itens)
    expect(find('ul')).to have_selector('li', count: itens)
end

  def add_text_todo(text)
    @session.find("input").set(text)
end

def task_done(int)
  if int > 1
    page.find(:xpath,"//*[@id='app']/section/ul/li[#{int}]/input").click
 else
  page.find(:xpath,@input).click
 end
end


def task_trash(int)
  if int > 1
    find(:xpath,"//*[@id='app']/section/ul/li[#{int}]/button/i", visible: false).click             
 else
      find(:xpath, @firstTask, visible: false).click
 end
end

def button_done
  page.find(:xpath,@doneMenu).click 
end

def reset_input_todo
  page.find(:xpath,@resetInput).click
end


def input_todo_empty
  page.first('input').text.should == ''
end

def button_todo
  page.find(:xpath,@todoMenu).click
end


end
