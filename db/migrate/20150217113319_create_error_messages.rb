class CreateErrorMessages < ActiveRecord::Migration
  def change
    create_table :error_messages do |t|
      t.text :message
      t.text :fix
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
