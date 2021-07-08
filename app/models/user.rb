class User < ApplicationRecord
    validates :nombre, :email, presence: true
end
