require 'neography'
class EntitiesController < ApplicationController
  def create
    @neo = Neography::Rest.new
    @person_class = @neo.create_node(:Class => "Person")
    wlog @person_class
    wlog @person_class.class

    node = @neo.create_node params["entity"]
    rel = @neo.create_relationship(:is_a, @person_class, node)
    wlog node
  end

  def delete
  end

  def update
  end

  def edit
  end

  def new
  end

  def index
  end

  def show
  end

end
