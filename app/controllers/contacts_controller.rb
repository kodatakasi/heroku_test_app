class ContactsController < ApplicationController
  def index
  end

  def new
    @contact = Contact.new
    
  end

  def create
    @contact = Contact.create(name: params[:name], email: params[:email], content: params[:content])
    if @contact.save
      redirect_to contacts_path, notice: "コメントを投稿しました！" 
    else
      render :new 
    end
    
  end
 
end
