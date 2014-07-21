class AddEnabledToUsers < ActiveRecord::Migration
   def self.up
    add_column :users, :enabled, :boolean, :default => true, :null => false
    add_index  :users, :enabled
  end

  def self.down
    remove_index  :users, :enabled
    remove_column :users, :enabled
  end
end
