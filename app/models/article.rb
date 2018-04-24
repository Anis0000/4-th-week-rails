class Article < ApplicationRecord
    has_and_belongs_to_many :category
    belongs_to :user
end
