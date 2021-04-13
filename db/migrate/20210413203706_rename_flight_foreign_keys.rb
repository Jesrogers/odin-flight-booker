class RenameFlightForeignKeys < ActiveRecord::Migration[6.1]
  def change
      change_table :flights do |t|
        t.rename :origin_airport_id, :from_airport_id
        t.rename :destination_airport_id, :to_airport_id
      end
  end
end
