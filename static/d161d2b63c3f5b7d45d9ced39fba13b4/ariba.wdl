version 1.0

task Ariba {
  command <<<
    ariba
  >>>
  output {
    File out_stdout = stdout()
  }
}