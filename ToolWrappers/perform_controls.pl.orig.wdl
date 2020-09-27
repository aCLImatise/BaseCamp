version 1.0

task PerformControlsplorig {
  command <<<
    perform_controls_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}