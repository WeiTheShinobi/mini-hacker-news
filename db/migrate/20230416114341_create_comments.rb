class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :content
      t.string :weight_score
      t.string :parent_comment_id
      t.string :user_id

      t.timestamps
    end
  end
end
