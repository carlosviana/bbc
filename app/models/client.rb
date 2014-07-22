class Client < ActiveRecord::Base

	attr_accessible :nome, :advogado, :razaosocial, :endereco, :numero, :bairro, :cidade, :uf, :complemento, 
					:contato, :cpfcnpj, :email, :obs, :enabled, :tel1, :tel2
end
