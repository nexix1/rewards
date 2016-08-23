class Expense < ActiveRecord::Base
	belongs_to :user
	validates :date, presence: true
	validates :amount, presence: true
	validates :payment, presence: true 
	validates :category, presence: true
	validates :description, presence: true 
end
