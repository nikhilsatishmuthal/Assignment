class MessagesController < ApplicationController
  def index
  end
  
  def index
    @message = Message.new
  end

  def create
    @message = current_user.messages.new(params[:message])

    if @message.save
      flash[:notice] = "Post successfully."
      redirect_to root_url
    else
      render :action => "index"
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to :back
  end
end
