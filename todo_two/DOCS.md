// Configuration
================

// Add-on setup
---------------

Generate a UUID for your user ID and add it to the add-on configuration.


// Integration setup
--------------------

Install the integration from https://github.com/jjok/todo-two-home-assistant.

Add this to your Home Assistant config to enable the integration.

    todo_two:
      select: 3

    sensor:
      platform: todo_two
      scan_interval: 600

    automation:
      - alias: Cleaning - Refresh Tasks
        trigger:
          platform: time
          at: "04:00:00"
        action:
          - service: todo_two.refresh

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
        - type: button
          name: Refresh tasks
          icon: "mdi:refresh"
          tap_action:
            action: call-service
            service: todo_two.refresh


// API
------

The API runs at http://homeassistant.local:8000.

All tasks data is available at: http://homeassistant.local:8000/tasks.

All configured users are available at: http://homeassistant.local:8000/users.
