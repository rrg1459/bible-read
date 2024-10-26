class Libro < ApplicationRecord

  has_many :versiculos

  belongs_to :testamento

end
