class CreateDemoscaffolds < ActiveRecord::Migration
  def change
    create_table :demoscaffolds do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
