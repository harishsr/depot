class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true, length: { minimum: 10, message: "is too short, sucka! 10 character minimum." }
  validates :image_url, allow_blank: true, format: {
    with:     %r{\.(gif|jpg|png)\Z}i,
    message:  'must be URL for GIF, PNG, or JPG image.' 
    }

  def self.latest
    Product.order(:updated_at).last
  end
end
