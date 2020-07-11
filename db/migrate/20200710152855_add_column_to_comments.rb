class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :post_id, :integer
  end
end
