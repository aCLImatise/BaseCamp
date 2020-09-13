version 1.0

task RunRbscreenpl {
  command <<<
    run_rbscreen_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}