version 1.0

task Checkv {
  command <<<
    checkv
  >>>
  output {
    File out_stdout = stdout()
  }
}