class AddColumnDivisionIdForEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column(:employees, :division_id, :int)
  end
end
