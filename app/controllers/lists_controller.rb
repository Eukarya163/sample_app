class ListsController < ApplicationController
  def new
    #Viewへ渡すためのインスタンス変数にModelオブジェクトを生成
    @list = List.new
  end
  
  def create
    # データを受け取り新規登録するためのインスタンス作成
    # インスタンス変数(@付き)はViewファイルへ受け渡し可能
    # ローカル変数は不可能(アクション内のみ利用可能)
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end
  
  def index
    @lists = List.all
  end

  def show
    @list =List.find(params[:id])
  end

  def edit
  end
  
  # ここから下はこのcontroller内のみ
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
