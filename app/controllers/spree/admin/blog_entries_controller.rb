class Spree::Admin::BlogEntriesController < Spree::Admin::ResourceController

  # new_action.before do
  #   @blog_entry.images.build
  # end

  update.after :expire_cache

  private
  def expire_cache
    expire_page :controller => '/news', :action => 'show', :path => @object.slug
  end

end
