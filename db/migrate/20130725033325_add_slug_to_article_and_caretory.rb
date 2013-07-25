class AddSlugToArticleAndCaretory < ActiveRecord::Migration
  def change
    add_column :categories, :slug, :string
    add_column :articles, :slug, :string
    add_index :categories, :slug, unique: true
    add_index :articles, :slug, unique: true
  end
end
