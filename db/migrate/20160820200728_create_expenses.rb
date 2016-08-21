class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.datetime :date
      t.float :amount
      t.string :payment
      t.string :category
      t.string :description

      t.timestamps null: false
    end
  end
end
