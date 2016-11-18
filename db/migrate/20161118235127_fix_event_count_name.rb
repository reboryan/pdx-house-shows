class FixEventCountName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :houses, :event_count, :events_count
  end
end
