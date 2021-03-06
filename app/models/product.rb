class Product < ApplicationRecord
  has_attached_file :image, styles: { medium: "400x400>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_format_of :price,:multiline => true, :with => /^[0-9]+\.[0-9]{2}$/
end
