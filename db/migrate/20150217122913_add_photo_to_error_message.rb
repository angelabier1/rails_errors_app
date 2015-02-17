class AddPhotoToErrorMessage < ActiveRecord::Migration
  def change
    add_column :error_messages, :photo, :string
  end
end
