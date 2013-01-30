class Spree::Admin::BlogEntriesController < Spree::Admin::ResourceController

  before_filter :setup_new_images, :only => [:new, :edit]

  def index
    @blog_entries = Spree::BlogEntry.page params[:page]
  end

  private

  def setup_new_images
      @blog_entry.images.build if @blog_entry.images.empty?
  end

end
