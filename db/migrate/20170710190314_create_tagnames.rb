class CreateTagnames < ActiveRecord::Migration[5.1]
  def change
    create_table :tagnames do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end
