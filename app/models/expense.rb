class Expense < ActiveRecord::Base
	validates :date, presence: true
	validates :amount, presence: true
	validates :payment, presence: true 
	validates :category, presence: true
	validates :description, presence: true 
	belongs_to :user
end
