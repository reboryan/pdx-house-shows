class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.belongs_to :house

      t.timestamps
    end
  end
end
