class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :notifiable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
