Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "posts_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li><%= link_to( t('posts'), posts_path) %></li>")