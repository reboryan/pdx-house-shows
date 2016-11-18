class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.text :rsvp_list, array:true, default: []
      t.boolean :public
      t.belongs_to :house
      t.belongs_to :user

      t.timestamps
    end
  end
end
