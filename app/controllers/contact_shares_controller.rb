class ContactSharesController < ApplicationController
  
  def create
    contact_share = ContactShare.new(params[:contact_share].permit(:user_id, :contact_id))
    if contact_share.save
      render json: contact_share
    else
      render json: contact_share.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    contact_share = ContactShare.find(params[:id])
    
    if contact_share.delete
      render json: contact_share
    else
      render json: contact_share.errors.full_messages, status: :unprocessable_entity
    end
  end
  
end