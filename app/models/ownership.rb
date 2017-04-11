class Ownership < ActiveRecord::Base
  belongs_to :user, class_name: "User"
  belongs_to :item, class_name: "Item"
  
  def self.item_ids
    self.group(:item_id).order('count(item_id) desc').limit(10).pluck(:item_id)
  end

end
