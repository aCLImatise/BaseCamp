version 1.0

task Hmmgs {
  command <<<
    hmmgs
  >>>
  output {
    File out_stdout = stdout()
  }
}