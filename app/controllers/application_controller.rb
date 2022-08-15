class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/companies" do
    companies = Company.all
    companies.to_json(:include => :toys)
  end

  get "/toys" do
    toys = Toy.all
    toys.to_json
  end

  get "/toys/:id" do
    toys = Toy.find(params[:id])
    toys.to_json
  end

  get "/stores" do
    stores = Store.all
    stores.to_json(:include => [{:toys => {:only => [:name, :price]}}])
  end

  delete "/companies/:id" do
    company = Company.find(params[:id])
    company.destroy
    company.to_json
  end

  delete "/stores/:id" do
    store = Store.find(params[:id])
    store.destroy
    store.to_json
  end

  delete "/toys/:id" do
    toy = Toy.find(params[:id])
    toy.destroy
    toy.to_json
  end

  post "/companies" do
    
    company = Company.create(
      name: params[:name],
      founding_year: params[:founding_year],
      headquarters: params[:headquarters],
      logo: params[:logo]
    )
    
    company.to_json
  
  end

  post "/toys" do
    
    toy = Toy.create(
      name: params[:name],
      toy_type: params[:toy_type],
      price: params[:price],
      rating: params[:rating],
      company_id: params[:company_id],
      store_id: params[:store_id],
      logo: params[:logo]
    )
    
    toy.to_json
  
  end

  post "/stores" do
    
    store = Store.create(
      name: params[:name],
      logo: params[:logo]
    )
    
    store.to_json
  
  end

  patch '/toys/:id' do
    toy = Toy.find(params[:id])
    toy.update(
      price: params[:price],
      rating: params[:rating],
    )
    toy.to_json
  end

end
