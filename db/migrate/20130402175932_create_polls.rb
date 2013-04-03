class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.integer :author_id
      t.string :name
      t.timestamps
    end
  end
end
