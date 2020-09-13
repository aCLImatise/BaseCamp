version 1.0

task Iterate {
  command <<<
    iterate
  >>>
  output {
    File out_stdout = stdout()
  }
}