class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(params[:event])
    @event.save
  
    redirect_to events_url
  end
  def show
    @event = Event.find(params[:id])
    @page_title = @event.name
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
  
    redirect_to :action => :show, :id => @event
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  
    redirect_to events_url
  end
end
