class RenameRewardTypetoPurchase < ActiveRecord::Migration
  def change
  	rename_column :rewards, :type, :purchase
  end
end
