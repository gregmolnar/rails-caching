module ProductsHelper
  def cache_key_for_products(products, suffix = '')
    ids = products.pluck(:id).join('-')
    max_updated_at = products.pluck(:updated_at).max
    "products/#{ids}-#{max_updated_at.to_i}#{suffix}"
  end
end
