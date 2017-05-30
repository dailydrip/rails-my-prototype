class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :body
      t.boolean :bool
      t.integer :position
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
