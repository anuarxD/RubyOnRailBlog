class CreateElementos < ActiveRecord::Migration[7.0]
  def change
    create_table :elementos do |t|
      t.string :elemento_tipo
      t.text :content
      t.references :post, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
