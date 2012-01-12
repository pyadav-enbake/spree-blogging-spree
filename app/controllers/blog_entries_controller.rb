class BlogEntriesController < Spree::BaseController

  before_filter :load_news_archive_data

  def show
    unless @blog_entry = BlogEntry.find_by_permalink(params[:slug])
        raise ActiveRecord::RecordNotFound
    end
  end

  def index
    @blog_entries = BlogEntry.published
  end

  def tag
    @blog_entries = BlogEntry.by_tag(params[:tag])
    render 'index'
  end

  def archive
    @blog_entries = BlogEntry.by_date(params)
    render 'index'
  end

  private

  def load_news_archive_data
    @news_archive = BlogEntry.organize_archives
  end

end
