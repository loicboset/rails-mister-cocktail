class AddImageUrlToCocktail < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :image_url, :text
  end
end
