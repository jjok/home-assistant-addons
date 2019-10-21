
    cd todo_two
    docker build --build-arg BUILD_FROM="homeassistant/amd64-base:latest" -t jjok/todo-two-hassio .

    docker run --rm -it -p 8000:8000 -v /home/jonathan/Workspace/home-assistant-addons/todo_two/data:/data --name todo-two-hassio jjok/todo-two-hassio
