class CreateAssemblageParts < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblage_parts do |t|
      t.references :assemblage, foreign_key: true
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
