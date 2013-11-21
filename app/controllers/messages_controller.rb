class MessagesController < ApplicationController

  # GET /support and NOT /messages
  def new
    @message = Message.new
  end

  # when user submits contact form, this methid is executed
  # POST /support and NOT /messages
  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # send message via mailer
      MessageMailer.send_message(@message).deliver
      flash[:success] = "Message sent! Thank you for contacting us."
      redirect_to new_message_path
    else
      # if invalid message, then display empty contact form
      #flash[:error] = "Some errors occured. See messages above."
      render :action => 'new'
      #flash.discard
    end
  end

end
