class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def backdoor
    render({ :template => "item_templates/backdoor" })
  end

  def create

    query_link_url= params.fetch("query_link_url")
    query_link_description = params.fetch("query_link_description")
    query_thumbnail_url = params.fetch("query_thumbnail_url")

    Item.create({ :link_url => query_link_url, :link_description => query_link_description, :thumbnail_url => query_thumbnail_url })
    
    redirect_to("/")
  end

end
