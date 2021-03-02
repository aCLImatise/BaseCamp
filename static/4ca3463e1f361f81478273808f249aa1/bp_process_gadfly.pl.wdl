version 1.0

task BpProcessGadflypl {
  command <<<
    bp_process_gadfly_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}