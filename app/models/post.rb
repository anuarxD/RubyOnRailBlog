class Post < ApplicationRecord
  belongs_to :autor
  has_many :elementos
end
