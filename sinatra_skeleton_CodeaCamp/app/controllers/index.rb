get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @urls = Url.all.reverse
  erb :index
end


get '/:urls' do
  # redirige a la URL original
  url_input = params[:urls]
  url = Url.find_by short: url_input 
  click_count = Url.visits = visits + 1
  update = Url.update(visits: click_count)
  update = save

  redirect_to url.original
end

post '/urls' do
  # crea una nueva Url
  @url = params[:data]
  new_url = Url.create(original: @url, visits: 0)
  if newURL.valid?
    newURL.save
    p session[:message] = "Saved"
    else
    p "Error"
  end
  redirect to '/'
end

