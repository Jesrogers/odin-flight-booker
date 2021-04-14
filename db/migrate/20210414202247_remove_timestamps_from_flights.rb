class RemoveTimestampsFromFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :created_at
    remove_column :flights, :updated_at
  end
end
