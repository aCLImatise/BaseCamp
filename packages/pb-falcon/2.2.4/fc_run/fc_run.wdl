version 1.0

task FcRun {
  command <<<
    fc_run
  >>>
  output {
    File out_stdout = stdout()
  }
}