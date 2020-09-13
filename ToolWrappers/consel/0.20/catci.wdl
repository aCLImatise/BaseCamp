version 1.0

task Catci {
  command <<<
    catci
  >>>
  output {
    File out_stdout = stdout()
  }
}