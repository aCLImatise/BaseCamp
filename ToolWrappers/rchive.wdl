version 1.0

task Rchive {
  command <<<
    rchive
  >>>
  output {
    File out_stdout = stdout()
  }
}