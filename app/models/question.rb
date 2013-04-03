class Question < ActiveRecord::Base
  attr_accessible :body, :poll_id

  has_many :choices
  has_many :responses, :through => :choices
  belongs_to :poll

  # def list_responses
  #   {self.body => self.responses.group("body").count}
  # end
end

