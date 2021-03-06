class Employee < ApplicationRecord

  belongs_to :division
  has_and_belongs_to_many(:projects)

  scope :old, -> { where("? >= 2000") }

  def transfer(new_division)
    DB.exec("UPDATE employees SET division_id = '#{new_division.id}' WHERE id = #{@id};")
  end
end
