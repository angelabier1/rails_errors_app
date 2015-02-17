class AddUserToErrorMessage < ActiveRecord::Migration
  def change
		remove_column :error_messages, :user_id
    add_reference :error_messages, :user, index: true
    add_foreign_key :error_messages, :users
  end
end
