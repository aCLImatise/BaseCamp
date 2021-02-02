version 1.0

task Mmvc {
  command <<<
    mmvc
  >>>
  output {
    File out_stdout = stdout()
  }
}