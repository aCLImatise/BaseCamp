version 1.0

task Misp {
  command <<<
    misp
  >>>
  output {
    File out_stdout = stdout()
  }
}