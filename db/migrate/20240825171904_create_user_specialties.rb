class CreateUserSpecialties < ActiveRecord::Migration[7.2]
  def change
    create_table :user_specialties do |t|
      t.references :user, null: false, foreign_key: true
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
