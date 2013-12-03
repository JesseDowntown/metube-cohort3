class AddCommentaryToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :commentary, :text
  end
end
