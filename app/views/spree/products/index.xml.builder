xml.instruct! :xml, :version => "1.0" 
xml.rss(:version=>"2.0", "xmlns:g" => "http://base.google.com/ns/1.0", "xmlns:c" => "http://base.google.com/cns/1.0") do
  xml.channel do
    xml.title("#{Spree::Config[:site_name]}")
     xml.link(products_url)
     xml.description("The latest products offered by #{Spree::Config[:site_name]}")
     xml.language('en-us')
     @products.each do |product|
       xml.item do
         xml.title(product.name)
         xml.description((product.images.count > 0 ? link_to(image_tag(product.images.first.attachment.url(:product)), product_url(product)) : '') + simple_format(product.description))
         xml.author(Spree::Config[:site_url])               
         xml.pubDate((product.available_on || product.created_at).strftime("%a, %d %b %Y %H:%M:%S %z"))
         xml.link(product_url(product))
         xml.guid(product.id)

         if product.images.count > 0
           xml.tag!('g:image_link', product.images.first.attachment.url(:product))
         end

         xml.tag!('g:price', product.price)
         xml.tag!('g:condition', 'new')
         xml.tag!('g:id', product.id)
         xml.tag!('g:brand', 'Honeywell') # Hard code for now... add in manufacturer
         # xml.tag!('g:availability', product.count_on_hand > 0 ? 'in stock' : 'out of stock')
         xml.tag!('g:availability', 'in stock')
      end
    end
  end
end