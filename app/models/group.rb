class Group < ActiveRecord::Base
	belongs_to :user
	 default_scope -> { order('created_at DESC') }
	 validates :user_id, presence: true
	 validates :title, presence: true, length: { maximum: 50 }
end
