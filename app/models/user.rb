class User < ActiveRecord::Base
  has_many :microposts, foreign_key: "user_id"
end
