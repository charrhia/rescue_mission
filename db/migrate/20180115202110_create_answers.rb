class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :user_name, null: false
      t.text :description, null: false
      t.integer :question_id, null: false

      t.timestamps
    end
  end
end
