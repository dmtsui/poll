class Response < ActiveRecord::Base
  attr_accessible :choice_id, :responder_id

  validate :unique_responder, :not_author

  belongs_to :choice
  belongs_to :responder, :class_name => "User", :foreign_key => "responder_id"
  has_one :question, :through => :choice



  def body
    choice.body
  end

  def poll
    question.poll
  end

  def unique_responder
    if question.responses.map {|r| r.responder_id}.include?(responder_id)
      errors[:responder_id] << "Already answered this question"
    end
  end

  def not_author
    if poll.author_id == responder_id
      errors[:responder_id] << "You wrote this question..." #REV: Might want to change this to make it more grammartical.
    end                                         #As Responder will be prefixed onto the front when the error appears.
  end

end


## id:1, q1, reD
## id:2, q2, Blue

## choice_id:1, 2 (Darwish)
## choice_id:2 ,