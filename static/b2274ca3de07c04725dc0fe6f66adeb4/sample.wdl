version 1.0

task Sample {
  command <<<
    sample
  >>>
  output {
    File out_stdout = stdout()
  }
}