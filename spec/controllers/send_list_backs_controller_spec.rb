#coding: utf-8
require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe SendListBacksController do
  login_admin
  render_views



  describe "GET index" do
    before(:each) do
      @send_list_back = Factory(:send_list_back)
    end

    it "assigns all send_list_backs as @send_list_backs" do
      get :index
      response.should be_success
    end
  end

  describe "GET show" do
    before(:each) do
      @send_list_back = Factory(:send_list_back)
    end


    it "should be success" do
      get :show, :id => @send_list_back
      response.should be_success
    end

    it "assigns the requested send_list_back as @send_list_back" do
      get :show, :id => @send_list_back
      response.should render_template('show')
    end
  end

  describe "GET new" do
    it "should be success" do
      get :new
      response.should be_success
    end
  end

  describe "POST create" do
    before(:each) do
      @attr = Factory.build(:send_list_back).attributes
      @bill_ids = [Factory(:computer_bill).id,Factory(:hand_bill).id]
    end
    describe "success" do
      it "能够成功保存票据信息" do
        lambda do
          post :create, :send_list_back => @attr,:bill_ids => @bill_ids
        end.should change(SendListBack,:count).by(1)
      end

      it "redirects to the created send_list_back" do
        post :create, :send_list_back => @attr,:bill_ids => @bill_ids
        response.should redirect_to(send_list_back_path(assigns(:send_list_back)))
      end
    end

    describe "with invalid params" do
      it "re-renders the 'new' template" do
        post :create, :send_list_back => {},:bill_ids => @bill_ids
        response.should render_template("new")
      end
    end

  end

  describe "DELETE destroy" do
    before(:each) do
      @send_list_back = Factory(:send_list_back)
    end

    it "destroys the requested send_list_back" do
      lambda do
        delete :destroy, :id => @send_list_back
      end.should change(SendListBack,:count).by(-1)
    end

    it "redirects to the send_list_backs list" do
      delete :destroy, :id => @send_list_back
      response.should redirect_to(send_list_backs_url)
    end
  end
end
