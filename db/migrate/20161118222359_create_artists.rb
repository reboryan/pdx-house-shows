class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.text :genres, array:true, default: []
      t.string :avatar
      t.string :location
      t.text :links, array:true, default: []
      t.integer :member_count, default: 1
      t.integer :show_count, default: 0

      t.timestamps
    end

    create_table :artists_events, id: false do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :event, index: true
    end
    add_index :artists_events, [:artist_id, :event_id]
  end
end
