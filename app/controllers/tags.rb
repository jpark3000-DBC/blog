post "/search_tags" do

  tag = Tag.find_by_tag(params[:tag])

  @posts = tag.posts

  erb :index
end

get "/search_tags/:tag" do
  tag = Tag.find_by_tag(params[:tag])

  @posts = tag.posts

  erb :index
end
