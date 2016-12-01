require "JSON"
class UserGray < ApplicationRecord
  def self.save_json
    records = JSON.parse(File.read(File.expand_path("../../../db/user_gray.json", __FILE__)))
    binding.pry
    self.create!("user_phone" => records['data']['user_gray']['user_phone'], 
                 "contacts_class1_blacklist_cnt" => records['data']['user_gray']['contacts_class1_blacklist_cnt'],
                 "contacts_class2_blacklist_cnt" => records['data']['user_gray']['contacts_class2_blacklist_cnt'],
                 "phone_gray_score" => records['data']['user_gray']['phone_gray_score'],
                 "contacts_class1_cnt" => records['data']['user_gray']['contacts_class1_cnt'],
                 "contacts_router_cnt" => records['data']['user_gray']['contacts_router_cnt'],
                 "contacts_router_ratio" => records['data']['user_gray']['contacts_router_ratio'])
  end
end