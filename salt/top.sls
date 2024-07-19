base:
  '*':
    - set_environment

dev:
  '*':
    - common
    - schedule

test:
  '*':
    - common
    - schedule

prod:
  '*':
    - common
    - schedule