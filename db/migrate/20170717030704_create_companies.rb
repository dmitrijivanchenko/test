class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :text
      t.string :logo_name
      t.string :addr
      t.string :contact_phone

      t.timestamps
    end
  end
end
