class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :publish
      t.references :moderator, null: false, foreign_key: true

      t.timestamps
    end
  end
end
