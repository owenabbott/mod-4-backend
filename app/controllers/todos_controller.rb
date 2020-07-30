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
        params.require(:todo).permit(:content, :deadline, :id, :user_id, :tag_id)
        #I don't remember if I need to permit 'id,' but including it to be safe
    end




end


# serializer walkthrough lecture https://www.youtube.com/watch?v=GbfgUDcHBwA&feature=youtu.be

# backend serves raw data in json format.

# serializer instruction starts at 11:40, before this is CSS basics and some other useful tools

# backend instruction starts at 14:00ish.

# frontend instruction begins at 15:34

    #my front end needs to:
        #create a new user based on form input
        #create a new todo
        #update a todo
        #delete a todo

        #homepage should render a list of all users and a login form. So components will be <Userlist> and <NewUserForm>
 
        #so this route should have a form component and also render all users from the backend.

        #when a user signs in, this renders the page of the user's todos, which will have links for edit, delete, and a create new todo link which pulls up a new todo form.



#setting up fetch requests in vanilla javascript starts at around 21 minutes.

#cors described at 28 minutes:
    #cross origin resource sharing. safety feature. makes sure you cant serve up data from one server to a different server. It takes about five minutes to explain this one sentence. Useful diagram at 31 minutes, describing this concept. 
    #to get around it, uncomment rack-cors in the gem file and then bundle install it.
    #go into backend, go into config, and then in application.rb uncomment all the cors stuff.

#at 35 minutes, fetch request from front end starts sending things to backend and he starts to build that up further.
#of all the ways to learn how to code, watching 80 minute lectures of people coding is probably the worst, and is even worse if you have fifteen thousand dollars you don't have on the line and never made more than twelve bucks an hour. You rationalize it by telling yourself you'll be able to afford it once you get the "MaRkEtAbLe SkIlLs" that are being taught, but if you never pick them up you'll never be able to afford it and you'll be fucked. Joining a bootcamp was absolutely the worst decision of my life. On top of it, they don't teach actually marketable skills. It's a scam.
#39 minutes: serializer is meant to clean data, getting rid of unneeded stuff before sending it on to the front end. 
#setting up activemodel serializer at 40 minutes.

#generating serializer at 42:50, starting with the index.
#animal serializer at 44:20

#associated objects are placed in the serializer as well, I guess. This is getting confusing.

#making front end form at 58 minutes.



    









