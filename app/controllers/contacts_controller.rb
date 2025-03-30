class ContactsController < ApplicationController
  def new
    # Create a new empty Contact object to be used in the form
    @contact = Contact.new
  end
  
  def create
    # Create a new Contact object with the parameters from the form
    @contact = Contact.new(contact_params)
    
    # Try to save the Contact to the database
    if @contact.save
      # Flash message for success
      flash[:success] = "Message sent successfully! We'll get back to you soon."
      # Create a fresh contact object for the form
      @contact = Contact.new
      # Render the new template again instead of redirecting
      render 'new'
    else
      # If saving fails, just set the flash message
      # The form will still have all the user's entered data
      flash.now[:danger] = "Error occurred, message has not been sent. Please check the form fields."
      # Using flash.now since we're not redirecting
      render 'new'
    end
  end
  
  private
    # Strong parameters to prevent mass assignment vulnerability
    def contact_params
      params.require(:contact).permit(:name, :email, :comments)
    end
end