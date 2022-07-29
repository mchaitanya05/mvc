class AddPhoneNumberToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :phone_number, :integer
    add_index :employees, :phone_number
  end
end
