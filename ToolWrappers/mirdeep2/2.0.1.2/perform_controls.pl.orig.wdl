version 1.0

task PerformControlsplorig {
  command <<<
    perform_controls_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}