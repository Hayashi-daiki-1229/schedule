class ChangeDataTitleToArticle < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :start , :date
    change_column :users, :fin, :date
    change_column :users, :all,:boolean
    change_column :users, :memo,:string
  end
end
