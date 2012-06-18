Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'feed_rss_link',
                     :insert_bottom => "[data-hook='inside_head']",
                     :partial => 'shared/rss_feeds')