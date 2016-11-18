class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.belongs_to :user
      t.text :description
      t.integer :capacity, default:0
      t.integer :event_count, default:0
      t.boolean :public, default:false
      t.text :images, array:true, default:[]

      t.timestamps
    end
  end
end
