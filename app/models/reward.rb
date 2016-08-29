class Reward < ActiveRecord::Base
	validates :search, presence: true
end
