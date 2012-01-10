Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "admin_blog_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => %(<%=  tab(:blog, { :route => "admin_blog_entries" })  %>),
                     :disabled => false)
