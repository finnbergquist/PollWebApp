class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :name
      t.float :q1answer
      t.float :q2answer
      t.float :q3answer

      t.timestamps
    end
  end
end
