class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :titulo_descripcion
      t.boolean :publicado
      t.datetime :publicado_el
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
