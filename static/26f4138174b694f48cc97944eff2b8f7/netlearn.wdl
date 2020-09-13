version 1.0

task Netlearn {
  command <<<
    netlearn
  >>>
  output {
    File out_stdout = stdout()
  }
}