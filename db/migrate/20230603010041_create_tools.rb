class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :cover
      t.string :description

      t.timestamps
    end
  end
end
