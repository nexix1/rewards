class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.datetime :bDate
      t.datetime :eDate
      t.float :bonus
      t.string :type
      t.boolean :online

      t.timestamps null: false
    end
  end
end
