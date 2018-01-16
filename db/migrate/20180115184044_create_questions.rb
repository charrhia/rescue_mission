class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :user_name, null: false
      t.string :title, null: false
      t.text   :description, null: false

      t.timestamps
    end
  end
end
