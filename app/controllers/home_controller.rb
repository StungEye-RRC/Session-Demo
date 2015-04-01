class HomeController < ApplicationController
  before_action :visit_counter
  
  def index
  end
  
  private
  def visit_counter
    if session[:visit_count]
      @visit_count = session[:visit_count] + 1
    else
      @visit_count = 1
    end
    
    session[:visit_count] = @visit_count
  end
end
