class AddDefaultValueToHost < ActiveRecord::Migration[5.0]
  def up
  	change_column :users, :host, :boolean, :default => false
  end
end
