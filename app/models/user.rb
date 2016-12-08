class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags

  def user_tag_list
    tags.map(&:name).join(", ")
  end

  def user_tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
