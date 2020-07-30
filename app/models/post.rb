class Post < ApplicationRecord
    has_many :post_tag_relations, dependent: :destroy
    has_many :tags, through: :post_tag_relations
    has_many :comments,dependent: :destroy
end
