class ChangeDecimalToUserGray < ActiveRecord::Migration[5.0]
  def change
    change_column :user_grays, :price, :decimal, precision: 5, scale: 2
  end
end
