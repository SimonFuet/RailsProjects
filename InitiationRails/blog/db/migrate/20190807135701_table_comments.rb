class TableComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments
    add_column :comments, :author, :string
    add_column :comments, :content, :text
    add_column :comments, :article_id, :int
    add_index :comments, :article_id
  end
end
