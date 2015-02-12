
get '/decks' do
   @all_decks = Deck.all.reverse
   erb :decks
end

get '/decks/new' do
  "show html form for creating a new deck"
end

post '/decks' do
  "a new deck was just created!"
end

get '/decks/:id' do
  @deck = Deck.find(params[:id])
  "This is where the cards in a deck will be listed."
  erb :view_deck
end

get '/decks/:id/edit' do
  "show a form to edit a deck with id = #{params[:id]}"
end

put '/decks/:id' do
  "the deck with id #{params[:id]} was just updated!"
end

delete '/decks/:id' do
  "the deck with id #{params[:id]} was just deleted!"
end
