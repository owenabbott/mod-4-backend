class User < ApplicationRecord
    has_many :todos
    has_many :tags, through: :todos
end
