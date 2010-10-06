class Product < ActiveRecord::Base
  
  validates :title,       :presence => true,
                          :uniqueness => true
  
  validates :description, :presence => true
  
  validates :price,       :numericality => {:greater_than_or_equal_to => 0.01}
  
  validates :image_url,   :presence => true,
                          :format => {
                            :with	=> /\.(gif|jpg|png)$/i,
                            :message => 'must be a URL for GIF, JPG or PNG image.'
                          }
end
