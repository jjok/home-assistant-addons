// Todo Two
===========

Runs [jjok/todo-two-web](https://github.com/jjok/todo-two-web) as a Hassio add-on.

API runs at http://hassio.local:8000.

// Setup
--------

Install the integration from https://github.com/jjok/todo-two-home-assistant.

Add this to your config to enable the integration.

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
