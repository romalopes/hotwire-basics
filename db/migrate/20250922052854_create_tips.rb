class CreateTips < ActiveRecord::Migration[8.0]
  def change
    create_table :tips do |t|
      t.string :title

      t.timestamps
    end
  end
end
