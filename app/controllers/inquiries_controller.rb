class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    
    if @inquiry.valid?
      MessageMailer.contact_notification(@inquiry).deliver
      redirect_to(new_inquiry_url, :notice => "Message was successfully sent.")
    else
      render :new
    end
  end
end
