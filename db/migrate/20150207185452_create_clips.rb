class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :title
      t.string :url
      t.string :start
      t.string :end
      t.int :position
      t.int :board_id

      t.timestamps null: false
    end
  end
end
