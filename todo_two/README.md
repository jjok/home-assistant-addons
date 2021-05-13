// Todo Two
===========

Runs [jjok/todo-two-web](https://github.com/jjok/todo-two-web) as a Home Assistant add-on.


// Add-on setup
---------------

Generate a UUID for your user ID and add it to the add-on config.


// Integration setup
--------------------

Install the integration from https://github.com/jjok/todo-two-home-assistant.

Add this to your Home Assistant config to enable the integration.

    todo_two:
      select: 3

Add something like this to your UI.

    - type: horizontal-stack
      cards:
        - type: entity-button
          entity: todo_two.task_1
          hold_action:
            action: call-service
            service: todo_two.complete_selected_task
            service_data:
              task: 1
        - type: entity-button
          entity: todo_two.task_2
          hold_action:
            action: call-service
            service: todo_two.complete_selected_task
            service_data:
              task: 2
        - type: entity-button
          entity: todo_two.task_3
          hold_action:
            action: call-service
            service: todo_two.complete_selected_task
            service_data:
              task: 3
        - type: entity-button
          name: Refresh tasks
          entity: todo_two.tasks_to_be_done
          icon: "mdi:refresh"
          hold_action:
            action: call-service
            service: todo_two.refresh


// API Endpoints
----------------

API runs at http://homeassistant.local:8000.

All tasks data is available at: http://homeassistant.local:8000/tasks.

All configured users are available at: http://homeassistant.local:8000/users.
