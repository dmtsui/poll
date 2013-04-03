class AddIndeces < ActiveRecord::Migration
  def change
    add_index :choices, :question_id
    add_index :polls, :author_id
    add_index :responses, :choice_id
    add_index :responses, :responder_id
    add_index :questions, :poll_id


  end
end
