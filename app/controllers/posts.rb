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
