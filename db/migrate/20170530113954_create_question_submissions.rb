class CreateQuestionSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_submissions do |t|
      t.text :body
      t.boolean :bool
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
