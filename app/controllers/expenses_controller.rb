class ExpensesController < ApplicationController
	before_action :authenticate_user!

	def index 
		@expenses = Expense.all

		@expenses_user = current_user.expenses.all
	end

	def new
		# @expense = Expense.new 

		@expense = current_user.expenses.build
	end

	def create
		# @expense = Expense.new(expense_params)

		@expenses = current_user.expenses.build(expense_params)
		if @expenses.save
			redirect_to expenses_path
		else
			redirect_to :back
		end
	end

	def show
		@expense = Expense.find(params[:id])
	end

	def edit 
		@expense = Expense.find(params[:id])
	end

	def update
		@expense = Expense.find(params[:id])

		if @expense.update(params[:expense].permit(:date, :amount, :payment, :category, :description))
			redirect_to expenses_path
		else
			render 'index'
		end
	end

	def destroy
		@expense = Expense.find(params[:id])
		@expense.destroy

		redirect_to expenses_path
	end

	def after_sign_in_path_for(resource)
  	redirect_to expenses_path(current_user) 
	end



	private
		def expense_params
			params.require(:expense).permit(:date, :amount, :payment, :category, :description)
		end
end
