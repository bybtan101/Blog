class Post < ActiveRecord::Base
  validates :topic, presence: true
  validates :message, presence: true
  has_many :comments

  def self.most_recent
    order("created_at DESC")
  end

end
