class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.belongs_to :user
      t.belongs_to :tag
      t.string :title
      t.string :content
      t.string :deadline
      t.timestamps
    end
  end
end
