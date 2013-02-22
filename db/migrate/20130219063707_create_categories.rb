class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :desc
      t.references :project

      t.timestamps
    end
    
    add_index :categories,:project_id
  end
end
