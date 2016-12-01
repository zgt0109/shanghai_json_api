class CreateUserGrays < ActiveRecord::Migration[5.0]
  def change
    create_table :user_grays do |t|
      t.string :user_phone
      t.string :contacts_class1_blacklist_cnt
      t.string :contacts_class2_blacklist_cnt
      t.string :phone_gray_score
      t.string :contacts_class1_cnt
      t.string :contacts_router_cnt
      t.string :contacts_router_ratio

      t.timestamps
    end
  end
end
