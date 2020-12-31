class Api::TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    render 'index.json.jb'
  end
end
