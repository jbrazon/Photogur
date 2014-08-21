class Comment < ActiveRecord::Base
  belongs_to :picture
  validates_presence_of :entry, :default_author => "Anonymous"
end
