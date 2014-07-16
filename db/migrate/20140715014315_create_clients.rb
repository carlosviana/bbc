class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :advogado

      t.timestamps
    end
  end
end
