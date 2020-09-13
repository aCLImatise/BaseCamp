version 1.0

task ShiverFastaq {
  command <<<
    shiver_fastaq
  >>>
  output {
    File out_stdout = stdout()
  }
}