class PrototypesController < ApplicationController
  before_action :set_prototype, only:[:show, :edit, :update, :destroy, :move_to_index]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, except:[:index, :show,:new, :create ]

  def index
    @prototypes = Prototype.includes(:user)
  end

  def new
    @prototype = Prototype.new
  end  

  def create
     @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    # @prototype = Prototype.find(params[:id])
    @comment = Comment.new
    @comments =@prototype.comments.includes(:user)
  end

  def edit
     @prototype = Prototype.find(params[:id])
  end

  def update
    # @prototype = Prototype.find(params[:id])
    if @prototype.update(prototype_params)
      redirect_to  prototype_path
    else
      render :edit
    end
  end

  def destroy
    # @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to root_path
  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :cacth_copy, :concept, :image).merge(user_id: current_user.id)
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end

  def move_to_index

    unless user_signed_in? && @prototype.user_id == current_user.id
      redirect_to action: :index
    end
  end
end


#@prototypeの変数はモデルであるクラスPrototypeを呼び出し、それぞれの該当するビューやアクション内で使うもの