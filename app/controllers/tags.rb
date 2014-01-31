post "/search_tags" do
  tag = Tag.find_by_tag(params[:tag])
  @posts = tag.posts

  erb :index
end

