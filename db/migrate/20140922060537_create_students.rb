class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.date :birth_date
      t.string :father_name
      t.string :mother_name
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.timestamps
    end
  end
end
