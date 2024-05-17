class CreatePortfolios < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :image
      t.decimal :rating
      t.timestamps
    end
  end
end
