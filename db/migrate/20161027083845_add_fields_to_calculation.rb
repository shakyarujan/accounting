class AddFieldsToCalculation < ActiveRecord::Migration
  def change
    add_column :calculations, :title, :string
    add_column :calculations, :amount, :decimal
     add_column :calculations, :date, :string
  end
end


