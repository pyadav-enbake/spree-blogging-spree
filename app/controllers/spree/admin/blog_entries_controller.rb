class Spree::Admin::BlogEntriesController < Spree::Admin::ResourceController

  # new_action.before do
  #   @blog_entry.images.build
  # end

  def index
    @blog_entries = Spree::BlogEntry.all
  end

end
