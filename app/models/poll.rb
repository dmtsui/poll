class Poll < ActiveRecord::Base
  attr_accessible :author_id, :name

  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_many :questions
  has_many :responses, :through => :questions

  def results
    responses.group("questions.body").group("choices.body").count

  end
# SELECT COUNT(*)
#     AS count_all, questions.body
#     AS questions_body, choices.body
#     AS choices_body
#   FROM "responses"
# LEFT JOIN "choices"
#     ON "responses"."choice_id" = "choices"."id"
#   JOIN "questions"
#     ON "choices"."question_id" = "questions"."id"
#  WHERE "questions"."poll_id" = 1
# GROUP BY questions.body, choices.body

end
