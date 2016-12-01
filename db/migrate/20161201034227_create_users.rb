class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :linkID
      t.string :title

      t.timestamps
    end
  end
end
