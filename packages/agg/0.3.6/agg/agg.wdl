version 1.0

task Agg {
  command <<<
    agg
  >>>
  output {
    File out_stdout = stdout()
  }
}