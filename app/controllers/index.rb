
get '/' do
  erb :index
end

get '/login' do
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect "/#{user.id}"
  else
    redirect '/'
  end
end

post '/signup' do
  p params[:username]
  @user = User.create(username: params[:username], fullname: params[:fullname], email: params[:email], password: params[:password])
  if @user.save
   session[:id] = @user.id
  else
    redirect '/'
  end
  redirect "/#{@user.id}"
end