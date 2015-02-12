get '/users' do
  "show all users"
end

get '/users/new' do
  "show html form for creating a new user"
end

post '/users' do
  "a new user was just created!"
end

get '/users/:id' do
  @user = User.find(params[:user_id])
  @decks = @user.decks
  erb :user
end

get '/users/:id/edit' do
  "show a form to edit a user with id = #{params[:id]}"
end

put '/users/:id' do
  "the user with id #{params[:id]} was just updated!"
end

delete '/users/:id' do
  "the user with id #{params[:id]} was just deleted!"
end

