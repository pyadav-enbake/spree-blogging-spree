class SpreeBloggingSpreeNamespacing < ActiveRecord::Migration
  def up
    rename_table :blog_entries, :spree_blog_entries
  end

  def down
    rename_table :spree_blog_entries, :blog_entries
  end
end
