get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @urls_total = Url.all
  erb :index
end


get '/:urls' do
  # redirige a la URL original
  url_input = params[:urls]
  url = Url.find_by short: url_input 
  visits = url.visits +=1
  visits.save
  redirect_to url.original
end

post '/urls' do
  # crea una nueva Url
  @url = params[:user_input]
  new_URL = Url.create(original: @url, visits: 0)
  if new_URL.save
    p session[:message] = "Saved"
    else
    p "Error"
  end
  redirect to '/'
end

