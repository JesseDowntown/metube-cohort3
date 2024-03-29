class VideosController < ApplicationController

  def show
    video_id = params[:id]
    @video = Video.find_by_id(video_id)
    @videos = Video.all
    @array = Video.all.map &:id
  end
  
  def show_all
    @videos = Video.all

  end

  # @@videos = {
  #   "gladiator" => {
  #     title: 'Gladiator',
  #     youtube_id: 'FI1ylg4GKv8',
  #     description: "Crowe shows everyone what's up."
  #   },
  #   "matilda" => {
  #     title: 'Matilda',
  #     youtube_id: 'EVWOQwZENBg',
  #     description: "Quite the random movie, but a classic for sure!"
  #   },
  #   "seinfeld" => {
  #     title: 'Seinfeld',
  #     youtube_id: 'm5OoR0Qjrlo',
  #     description: 'A great description on where socks really go'
  #   },
  #   "friends" => {
  #     title: 'Friends',
  #     youtube_id: 'XIsVHF2bwVs',
  #     description: 'Gotta love friends!'
  #   }
  # }

end