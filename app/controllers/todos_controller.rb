class TodosController < ApplicationController
    
    def index
        todos = Todo.all 
        render json: todos 
    end

    def show
        todo = Todo.find(params[:id])
        render json: todo 
    end

    def create
        # user_id = User.find_by()
        # newTodo = Todo.create()
        # render json: newTodo


        #byebug might be able to help see how all this works once I get the frontend fleshed ou
        #this is difficult to think about without the front end being built a little more up

        # a todo requires a user id and currently requires at least one tag id. 
        # I have to brush up on how to do this for many-to-many relationships, for now will assume there is one user id and one tag id.
        #will get the rest of crud done and come back to modify this one.
    end 

    def destroy 
        todo = Todo.find(todo_params[:id])
        render json: todo
        todo.destroy
    end

    def edit
        todo = Todo.find(todo_params[:id])
    end

    private

    def todo_params
        params.require(:todo).permit(:content, :deadline, :id)
        #I don't remember if I need to permit 'id,' but including it to be safe
    end




end
