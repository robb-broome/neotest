require 'spec_helper'

describe EntitiesController do

  describe "GET 'post:create'" do
    it "should be successful" do
      get 'post:create'
      response.should be_success
    end
  end

  describe "GET 'delete:delete'" do
    it "should be successful" do
      get 'delete:delete'
      response.should be_success
    end
  end

  describe "GET 'put:update'" do
    it "should be successful" do
      get 'put:update'
      response.should be_success
    end
  end

  describe "GET 'get:edit'" do
    it "should be successful" do
      get 'get:edit'
      response.should be_success
    end
  end

  describe "GET 'get:new'" do
    it "should be successful" do
      get 'get:new'
      response.should be_success
    end
  end

  describe "GET 'get:index'" do
    it "should be successful" do
      get 'get:index'
      response.should be_success
    end
  end

  describe "GET 'get:show'" do
    it "should be successful" do
      get 'get:show'
      response.should be_success
    end
  end

end
