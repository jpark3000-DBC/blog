post "/search_tags" do
  listings = Post.includes(:tags)
  @posts = listings.select { |listing| listing.tags[0].tag == params[:tag] }

  erb :index
end

