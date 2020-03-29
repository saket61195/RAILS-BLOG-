class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :vistor
  has_many :notifications, as: :notifiable
end
