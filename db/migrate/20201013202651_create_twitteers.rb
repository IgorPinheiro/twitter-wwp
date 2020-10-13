class CreateTwitteers < ActiveRecord::Migration[6.0]
  def change
    create_table :twitteers do |t|
      t.text :twitteer

      t.timestamps
    end
  end
end
