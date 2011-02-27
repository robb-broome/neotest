require 'neography'
class EntitiesController < ApplicationController
  def create
    @neo = Neography::Rest.new
    @root_node = @neo.get_root
    wlog @root_node
    @person_class = @neo.create_node(:Class => "Person")
    wlog @person_class

    rel = @neo.create_relationship(:is_a, @root_node, @person_class)
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

  private
  def wlog thing
    puts "= " * 40
    puts JSON.pretty_generate thing
    puts "= " * 40
  end
end
