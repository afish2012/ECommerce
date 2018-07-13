class AddImageToProdcuts < ActiveRecord::Migration[5.2]
  def change
    add_column :prodcuts, :image, :string
  end
end
