
# How to make a loop
# names.each do |name|
  # puts "Hello,  #{name}"
# end

# def name_length(name
# if password.length > 6
  # puts "OKAY!"
# else
  # puts "Create a longer password"
# end
    # name.length
# end


# call method

# password_length("MEMES")


helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end


get '/' do
  @posts = Post.order(created_at: :desc)
  erb(:index)
end


get '/signup' do     # if a user navigates to the path "/signup",
  @user = User.new   # setup empty @user object
  erb(:signup)       # render "app/views/signup.erb"
end


post '/signup' do
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username   = params[:username]
  password   = params[:password]

  @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })

  if @user.save
    redirect to('/login')
  else
    erb(:signup)
  end
end


get '/login' do    # when a GET request comes into /login
  erb(:login)      # render app/views/login.erb
end



post '/login' do
  username = params[:username]
  password = params[:password]

  user = User.find_by(username: username)

  if user && user.password == password
    session[:user_id] = user.id
    redirect to('/')
  else
    @error_message = "Login failed."
    erb(:login)
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect to('/')
end


get '/posts/new' do
  erb(:"posts/new")
end

post '/posts' do
  params.to_s
end
