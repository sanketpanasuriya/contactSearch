class ContactsController < ApplicationController
  before_action :set_contacts, only: %i[ index search_contacts contact_details ]

  def index; end

  def search_contacts; end

  def contact_details; end

  private
    def searching_params
      params.fetch(:search, {}).permit(:contents)
    end

    def set_contacts
      @contacts = Contact.find_contacts(searching_params[:contents])
    end
end
