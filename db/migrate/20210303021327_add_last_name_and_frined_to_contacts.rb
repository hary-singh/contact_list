class AddLastNameAndFrinedToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :Last_name, :string
    add_column :contacts, :friend, :boolean
  end
end
