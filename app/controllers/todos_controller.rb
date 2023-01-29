class TodosController < ApplicationController
  # ! タスク一覧を取得する
  def index
    @todos = Todo.all.order(updated_at: "DESC")
  end

  # ! タスクを登録するフォームの表示
  def new
    @todo = Todo.new
  end

  # ! タスクを登録する
  def create
    @todo = Todo.new(bind_params)

    if @todo.save
      redirect_to "/"
    else
      render "new", status: :unprocessable_entity
    end
  end

  # ! タスクを削除する
  def delete
    @todo = Todo.find(params[:id])
    
    if @todo.destroy
      redirect_to "/"
    else
      redirect_to "/"
    end
  end

  private

  def bind_params
    params.require(:todo).permit(:title, :contents)
  end
end
