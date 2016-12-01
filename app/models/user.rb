require "json"
class User < ApplicationRecord
  def self.save_json
    records = JSON.parse(File.read(File.expand_path("../../../db/test.json", __FILE__)))
    binding.pry
    records.each do |r|
      self.create!(:linkID => r['linkID'], :title => r['title'])
    end
  end
end
