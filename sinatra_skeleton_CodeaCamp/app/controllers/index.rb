get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

# e.g., /q6bda
get '/:urls' do
  # redirige a la URL original
  url = Url.find_by(short: (params[:urls]))
  redirect_to url.original
end

post '/urls' do
  # crea una nueva Url
  @url = params[:data]
  new_url = Url.create(original: @url)
end
