class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.belongs_to :advisor, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.string :name
      
      t.timestamps
    end
  end
end