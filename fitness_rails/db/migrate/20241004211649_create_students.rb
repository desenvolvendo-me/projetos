class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.float :weitgh
      t.float :height
      t.float :imc_number
      t.string :imc_classification

      t.timestamps
    end
  end
end
