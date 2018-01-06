class DemoController < ApplicationController
  def index
    render('index') #redundant, comes with sensible defaults
  end
  
  def hello
    render('hello') #redundant, comes with sensible defaults
  end
  
  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end
  
  def lynda
    redirect_to('http://lynda.com')
  end
end
