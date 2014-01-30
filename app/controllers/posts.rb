get "/create_post" do
  erb :create_post
end

post "/create_post" do
  Post.create(title: params[:post][:title],
              body: params[:post][:body],
              author: params[:post][:author] )

  redirect to('/')
end

get "/post/:post_id" do
  @post = Post.find(params[:post_id])
  erb :single_post
end

get "/edit/:post_id" do
  @post = Post.find(params[:post_id])
  erb :edit_post
end

post "/edit/:post_id" do
  # puts "#{params[:post_id]}"
  # puts "#{params[:post][:title]}"
  Post.update(params[:post_id],
              title:  params[:post][:title],
              body:   params[:post][:body],
              author: params[:post][:author])
  redirect to("/post/#{params[:post_id]}")
end

