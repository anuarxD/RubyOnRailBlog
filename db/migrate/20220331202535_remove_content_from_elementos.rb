class RemoveContentFromElementos < ActiveRecord::Migration[7.0]
  def change
    remove_column :elementos, :content
  end
end
