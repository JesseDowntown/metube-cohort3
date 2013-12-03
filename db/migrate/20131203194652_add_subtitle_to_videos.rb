class AddSubtitleToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :subtitle, :text
  end
end
