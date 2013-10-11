class StaticPagesController < ApplicationController
<<<<<<< HEAD

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page]).per_page(10)
    end
  end
  
  def help
  end

  def about
  end

=======
  def home
  end

  def help
  end
  
  def about
  end
  
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  def contact
  end
end
