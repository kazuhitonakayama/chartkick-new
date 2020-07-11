class AddColumnNameToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :sumtime, :integer
  end
end
