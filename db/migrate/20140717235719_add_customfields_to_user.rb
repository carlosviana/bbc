class AddCustomfieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nome, :string
    add_column :users, :telefone, :string
  end
end
