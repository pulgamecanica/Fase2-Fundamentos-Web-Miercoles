get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/:users' do
  user_id = params[:id_user]
  user_password = params[:user_password]
  url = User.find_by(id: user_id) 
  if url.password == (password: user_password)
  url.save
  erb :hidden_page
 else
  "Error, wrong password/email"
end
end

post '/users' do
  user_name = params[:user_name]
  user_email = params[:user_email]
  user_password = params[:user_password]

  new_user = Url.create(name: user_name, email: user_email, password: user_password)
  if new_user.save
     p session[:message] = "Saved"
     else
     p "Error"
   end
   redirect to '/'
end
