class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false

      t.timestamps
    end

    # table name: :table_name, :column_name, options(implicit hash)
    add_index :users, :name, unique: true
  end
end
