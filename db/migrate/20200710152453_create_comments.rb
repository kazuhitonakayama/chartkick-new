class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :detail
      t.integer :time

      t.timestamps
    end
  end
end
