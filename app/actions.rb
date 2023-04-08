helpers do
    def current_user
        User.find_by(id: session[:user_id])
    end
end

get '/' do
    @finstagram_posts = FinstagramPost.order(created_at: :desc)
    erb(:index)
end

#User signup when navigating to page
get '/signup' do 

    @user = User.new
    erb(:signup) #renders file
end    

post '/signup' do
    #grab use input from params
    email = params[:email]
    avatar_url = params[:avatar_url]
    username = params[:username]
    password = params[:password]

    #instantiate & save user
    @user = User.new({email: email, avatar_url: avatar_url, username: username, password: password})

    # if validations pass & user saved
    if @user.save
        redirect to('/login')
    else 
        erb(:signup)
    end
end

get '/login' do 
    erb(:login)
end

post '/login' do
    username = params[:username]
    password = params[:password]

    #find by username
    @user = User.find_by(username: username)

    #check existence & match
    if @user && @user.password == password
        session[:user_id] = @user_id
        redirect to('/') 
        
    else
        @error_message = "Login Failed"
        erb(:login)
    end
end

get '/logout' do
    session[:user_id] = nil
    redirect to('/')
end

