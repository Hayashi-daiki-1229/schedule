class CreateUsers < ActiveRecord::Migration[6.1]
    
  def change
     create_table :users do |t|
     t.string :title
     t.datetime :start
     t.datetime :fin
     t.boolean :all
     t.string :memo

      t.timestamps
  end
  end
end
