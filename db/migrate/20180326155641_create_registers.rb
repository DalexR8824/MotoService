class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :celphone

      t.timestamps
    end
  end
end
