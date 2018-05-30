class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.integer :commentable_id
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end

    add_index :comments, [:commentable_id, :commentable_type]
  end
end
