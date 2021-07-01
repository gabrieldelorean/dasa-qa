require 'capybara/rspec/matchers'
require 'rspec'

class DonePage < BasePage
  include Capybara::RSpecMatchers
  include RSpec::Matchers

  def initialize
   @list = '//*[@id="app"]/section/ul/li'
   @firstTask = '//*[@id="app"]/section/ul/li/button/i'
   @doneMenu = '//*[@id="app"]/nav/a[2]'
   @todoMenu = '//*[@id="app"]/nav/a[1]'
   @resetInput = '//*[@id="app"]/section/form/button[1]'
   @session = Capybara.current_session
  end

  def go
    @session.visit "/"
  end
 

  def list_done_null
    page.should have_no_xpath(@list)
  end

  def list_done_not_empty
    page.should have_xpath(@list)
  end

  def verify_count_list_done(itens)
    expect(find('ul')).to have_selector('li', count: itens)
  end

  def add_text_done(text)
    find("input").set(text)
  end

def task_trash_done(int)
  if int > 1
    page.find(:xpath,"//*[@id='app']/section/ul/li[#{int}]/button/i", visible: false).click             
 else
      page.find(:xpath, @firstTask, visible: false).click
 end               
end

def button_done
  page.find(:xpath,@doneMenu).click 
end

def reset_input_done
  page.find(:xpath,@resetInput).click
end

def verify_count_list_done(itens)
  expect(find('ul')).to have_selector('li', count: itens)
end

def input_todo_empty
  page.first('input').text.should == ''
end


end
