class Message < ActiveRecord::Base
  belongs_to :account
  validates_presence_of :content
  validates_presence_of :pubdate
end
