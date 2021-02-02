version 1.0

task DBrm {
  command <<<
    DBrm
  >>>
  output {
    File out_stdout = stdout()
  }
}