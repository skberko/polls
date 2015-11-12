class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.string :user_id, null: false

      t.timestamps
    end

    add_index :polls, :title
    add_index :polls, :user_id
  end
end
