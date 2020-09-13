version 1.0

task Catmt {
  command <<<
    catmt
  >>>
  output {
    File out_stdout = stdout()
  }
}