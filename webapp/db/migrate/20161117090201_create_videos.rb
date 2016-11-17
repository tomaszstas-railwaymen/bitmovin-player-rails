class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :dash
      t.string :hls
      t.string :progressive
      t.string :name

      t.timestamps
    end
  end
end
