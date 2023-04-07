get '/' do
    
    @finstagram_posts = FinstagramPost.order(created_at: :desc)

    erb(:index)
end

#User signup when navigating to page
get '/signup' do 

    @user = User.new
    erb(:signup) #renders file

end    