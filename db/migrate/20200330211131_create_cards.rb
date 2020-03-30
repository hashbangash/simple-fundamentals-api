class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :word
      t.text :definition
      t.integer :num_likes
      t.integer :num_comments

      t.timestamps
    end
  end
end
