version 1.0

task Soapsuds {
  command <<<
    soapsuds
  >>>
  output {
    File out_stdout = stdout()
  }
}