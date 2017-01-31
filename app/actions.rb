
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


get '/' do

@posts = Post.order(created_at: :desc)

  # puts humanized_time_ago(2)
erb(:index)

end
