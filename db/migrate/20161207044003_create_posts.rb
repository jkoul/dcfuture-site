class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :summary
      t.string :body
      t.string :upload_url
      t.references :user, index: true, foreign_key: true
      t.string :section

      t.timestamps
    end
  end
end
