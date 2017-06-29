class CreateUsersEntriesStories < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :bio, :string
      t.timestamps
    end

    create_table :entries do |t|
      t.column :user_id, :integer
      t.column :story_id, :integer
      t.column :image_url, :string
      t.column :sentence, :string
      t.timestamps
    end

    create_table :stories do |t|
      t.timestamps
    end
  end
end
