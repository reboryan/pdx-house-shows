class AddDescriptionAndAllAgesToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :description, :text
    add_column :events, :all_ages, :boolean, default: true
  end
end
