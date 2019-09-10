class CompleteController < ApplicationController
  before_action :set_todo

   def create
     @todo.complete = true
     @todo.save
     redirect_to todos_path notice: 'ToDo agregado'
   end
   def destroy
     @todo.complete = false
     @todo.save
     redirect_to todos_path notice: 'ToDo eliminado'
   end

private
def set_todo
  @todo = Todo.find(params[:id])
end

end
