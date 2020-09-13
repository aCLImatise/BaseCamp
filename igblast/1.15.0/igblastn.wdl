version 1.0

task Igblastn {
  command <<<
    igblastn
  >>>
  output {
    File out_stdout = stdout()
  }
}