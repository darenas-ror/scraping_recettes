class AddEnableToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :enable, :boolean, default: false, null: false
  end
end
