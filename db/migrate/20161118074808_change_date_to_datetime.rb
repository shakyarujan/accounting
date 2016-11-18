class ChangeDateToDatetime < ActiveRecord::Migration
  def change
    add_column :calculations, :date_time, :datetime
  end
end
