class Photo < ActiveRecord::Base
  validates :filename, presence:true
  validates :user_id, presence:true
  validates :name, presence:true

  belongs_to :user
  mount_uploader :filename , PhotoUploader

end
