class User < ActiveRecord::Base

  attr_accessible :name

  has_many :polls, :foreign_key => "author_id"
  has_many :responses, :foreign_key => "responder_id"

  def create_poll(poll_name)
    
  end


end
