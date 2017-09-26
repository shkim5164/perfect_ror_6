class HomeController < ApplicationController
  def index
    
  end

  def create
    render text: '현재 params[:id]의 상태 => ' + params[:id].inspect
    @post = Post.all
    
  end
  
  def example
  end
  
  private
  
  def start_logger
    logger.debug('[Start]'+Time.now.to_s)
  end
  
  def end_logger
    logger.debug('[Finish]'+Time.now.to_s)
  end
  
  def around_logger
    logger.debug('[Start]'+Time.now.to_s)
    yield
    logger.debug('[Finish]'+Time.now.to_s)
  end
end
