class AddFieldsToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :razaosocial, :string
  	add_column :clients, :endereco, :string
  	add_column :clients, :numero, :string
  	add_column :clients, :bairro, :string
  	add_column :clients, :cidade, :string
  	add_column :clients, :uf, :string
  	add_column :clients, :complemento, :string
  	add_column :clients, :contato, :string
  	add_column :clients, :cpfcnpj, :string
  	add_column :clients, :email, :string
  	add_column :clients, :obs, :string
  	add_column :clients, :enabled, :boolean, :default => true, :null => false
    add_column :clients, :tel1, :string
    add_column :clients, :tel2, :string
  end
end
