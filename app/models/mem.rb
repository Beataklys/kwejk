class Mem < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

scope :get_active, ->{where active: true}


 #def self.get_active
  # Mem.where(active: true)
 #end
end
