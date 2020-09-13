version 1.0

task Eaddress {
  command <<<
    eaddress
  >>>
  output {
    File out_stdout = stdout()
  }
}