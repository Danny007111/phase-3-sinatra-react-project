class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Add `/reviews` to directory!" }.to_json
  end

  get "/reviews" do
    reviews = Review.all.order(:created_at)
    reviews.to_json()
  end

  post '/reviews' do
    review = Review.create(review: params[:review], dish_id: dish.id, user_id: self)
    review.to_json()
  end

  patch '/reviews/:id' do
    reviewed = Review.find(params[:id])
    reviewed.update(review: params[:review])
    reviewed.to_json()
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json()
  end

end
