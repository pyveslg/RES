class CreateExpressions < ActiveRecord::Migration[5.0]
  def change
    create_table :expressions do |t|
      t.string :expfr
      t.string :expen
      t.references :mon_french_expresso, foreign_key: true

      t.timestamps
    end
  end
end
