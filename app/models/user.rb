class User < ActiveRecord::Base
  def is_child?
    age.present? && age < 18
  end
  def fullname
    "#{firstname}  #{lastname}"
  end

  has_many :photos

  validates :age, presence:true
  validates :firstname, presence:true
  validates :lastname, presence:true

end
