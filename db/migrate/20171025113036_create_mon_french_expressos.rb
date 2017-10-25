class CreateMonFrenchExpressos < ActiveRecord::Migration[5.0]
  def change
    create_table :mon_french_expressos do |t|
      t.string :intro
      t.string :learn
      t.string :question1
      t.string :option1
      t.string :option2
      t.integer :answer
      t.string :rulefr
      t.string :ruleen
      t.string :question2
      t.string :color

      t.timestamps
    end
  end
end
