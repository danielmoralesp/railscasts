class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :url
  has_many :comments
  embed :ids, include: true

  def url
    product_url(object)
  end

  def attributes
    data = super
    data[:edit_url] = edit_product_url(object)
    data
  end
end
