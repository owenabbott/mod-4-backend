class Tag < ApplicationRecord
    has_many :todos
    has_many :users, through: :todos
end
