class CreateErrors < ActiveRecord::Migration
  def change
    create_table :errors do |t|
      t.text :message
      t.text :fix

      t.timestamps null: false
    end
  end
end
