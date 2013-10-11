class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :signed_in_user,
                only: [:index, :edit, :update, :destroy, :following, :followers]
=======
  before_action :signed_in_user, only: [:edit, :update]
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
<<<<<<< HEAD
    @users = User.paginate(page: params[:page]).per_page(10)
=======
    @users=User.paginate(page: params[:page]).per_page(10)
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
  end

  def show
    @user = User.find(params[:id])
<<<<<<< HEAD
    @microposts = @user.microposts.paginate(page: params[:page]).per_page(10)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
=======
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      #handle a successful save
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
<<<<<<< HEAD
  end

  def update
=======
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
<<<<<<< HEAD

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page]).per_page(10)
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page]).per_page(10)
    render 'show_follow'
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

=======
  def destroy

    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
    
  end
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
<<<<<<< HEAD

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  end
=======
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
>>>>>>> 492a32513cf0a2428ce18f4cc64ccc76453e9bdc
