class CreateUsers < ActiveRecord::Migration
  def change
  end
end


## Users
## id

## Poll
## poll_id (default) | author_id

## Question
## question_id (default) | poll_id | body

## Possible Choices
## question id | choice

## Responses
## responder_user_id (must be non-creator) | possible_choice_id