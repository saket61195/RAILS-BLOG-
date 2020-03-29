class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :message
      t.boolean :status
      t.references :post, null: false, foreign_key: true
      t.references :vistor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
