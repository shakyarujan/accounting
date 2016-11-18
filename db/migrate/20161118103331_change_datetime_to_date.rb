class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
    add_column :calculations, :datetime, :date
  end
end
