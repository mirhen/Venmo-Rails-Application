class AddUsernameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :handle, :string
  end
end
