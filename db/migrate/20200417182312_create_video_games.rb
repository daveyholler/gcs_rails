class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :game_id
      t.string :name
      t.integer :year
      t.string :platform
      t.string :genre
      t.string :publisher
      t.integer :global_sales
      t.integer :critic_score
      t.integer :user_score
      t.string :developer
      t.string :image_url

      t.timestamps
    end
  end
end
