version 1.0

task RunTrinotateWebserverpl {
  command <<<
    run_TrinotateWebserver_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}