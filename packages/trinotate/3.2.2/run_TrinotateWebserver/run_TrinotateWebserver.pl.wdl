version 1.0

task RunTrinotateWebserverpl {
  command <<<
    run_TrinotateWebserver_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}