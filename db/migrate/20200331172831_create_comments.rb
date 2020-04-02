class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :commentText
      t.string :author
      t.references :user, foreign_key: true
      t.references :card, foreign_key: true
      t.boolean :user_comments, null: false, default: false

      t.timestamps
    end
  end
end
