class AddDecimalToUserGray < ActiveRecord::Migration[5.0]
  def change
    add_column :user_grays, :price, :decimal
  end
end
