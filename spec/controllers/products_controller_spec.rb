require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
    
    
describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      expect(response).to render_template('index')
    end
  end
    
    
  context "GET #edit" do
    before do
      @product = Product.create(name: "A test", description: "test", price: 100)
    end

    it 'renders edit template' do
      get :edit, params: { id: @product.id }
      expect(response).to be_ok
      expect(response).to render_template('edit')
    end
  end

  context "GET #show" do
    before do
      @product = Product.create(name: "I'm doing test", description: "test", price: 100)
    end

    it 'This renders a show template' do
      get :show, params: { id: @product.id }
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end
end
