class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :student_id, null: false
      t.string :tenth_board
      t.string :tenth_school_name
      t.integer :tenth_percentage
      t.string :twelvth_board
      t.string :twelvth_school_name
      t.integer :twelvth_percentage
      t.integer :entrance_rank
      t.timestamps
    end
  end
end
