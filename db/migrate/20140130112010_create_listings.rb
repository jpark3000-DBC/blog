class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.belongs_to :post
      t.belongs_to :tag
      t.timestamps
    end
  end
end
