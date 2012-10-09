class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @post = Micropost.find_by_id(params[:post])
      if @post.blank?
        
      else
        @slides = Slide.find(:all, :conditions => { :micropost_id => @post.id })
        @slide = Slide.new
      end
      


      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @slide }
      end
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
