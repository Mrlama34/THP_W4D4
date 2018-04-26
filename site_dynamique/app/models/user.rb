class User < ApplicationRecord
	validates :username, uniqueness: true, presence: true, format: { without: /\s/ }
end
