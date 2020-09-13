version 1.0

task Starchdifftypical {
  command <<<
    starch_diff_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}