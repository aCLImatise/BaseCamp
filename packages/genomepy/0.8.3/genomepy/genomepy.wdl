version 1.0

task Genomepy {
  command <<<
    genomepy
  >>>
  output {
    File out_stdout = stdout()
  }
}