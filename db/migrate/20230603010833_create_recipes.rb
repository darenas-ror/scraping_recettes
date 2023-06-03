class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cover
      t.string :url
      t.text :instruction
      t.text :description
      t.string :cook_time

      t.timestamps
    end
  end
end
