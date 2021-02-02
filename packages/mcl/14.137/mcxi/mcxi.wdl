version 1.0

task Mcxi {
  command <<<
    mcxi
  >>>
  output {
    File out_stdout = stdout()
  }
}