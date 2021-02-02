version 1.0

task Tblastn {
  command <<<
    tblastn
  >>>
  output {
    File out_stdout = stdout()
  }
}