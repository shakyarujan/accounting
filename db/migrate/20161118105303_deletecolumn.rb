class Deletecolumn < ActiveRecord::Migration
  def change
    remove_column :calculations, :date_time, :datetime
    remove_column :calculations, :date, :string
  end
end
