class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :content
      t.string  :session_id
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
