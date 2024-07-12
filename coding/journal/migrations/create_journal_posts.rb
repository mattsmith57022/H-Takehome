class CreateJournalPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :journal_posts do |t|
      t.references :client, null: false, foreign_key: true
      t.text :content
      t.datetime :posted_at, null: false

      t.timestamps
    end

    add_index :journal_posts, :posted_at
  end
end
