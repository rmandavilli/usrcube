class MessagesController < ApplicationController

  # GET /messages/new
  def new
    @message = Message.new
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      flash[:success] = "Message sent! Thank you for contacting us."
      redirect_to new_message_path
    else
      render :action => 'new'
    end
  end

end
