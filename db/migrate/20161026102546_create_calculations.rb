class CreateCalculations < ActiveRecord::Migration
  def change
    create_table :calculations do |t|
      t.timestamps null: false
    end
  end
end

