version 1.0

task BpProcessSgdpl {
  command <<<
    bp_process_sgd_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}