version 1.0

task Watchdoggui {
  command <<<
    watchdog_gui
  >>>
  output {
    File out_stdout = stdout()
  }
}