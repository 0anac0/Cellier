class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :professor, foreign_key: true

      t.timestamps
    end
  end
end
