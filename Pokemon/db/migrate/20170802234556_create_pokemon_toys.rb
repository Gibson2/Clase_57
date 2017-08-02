class CreatePokemonToys < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemon_toys do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
