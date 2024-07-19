schedule:
  highstate_job:
    function: state.highstate
    minutes: 60
    splay: 10
    enabled: True
    maxrunning: 1
    on_start: False
    return_job: True

  update_job:
    function: pkg.upgrade
    cron: '0 2 * * 0'  # Every Sunday at 2 AM
    enabled: True
    maxrunning: 1
    return_job: True
