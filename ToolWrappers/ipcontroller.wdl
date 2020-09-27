version 1.0

task Ipcontroller {
  command <<<
    ipcontroller
  >>>
  output {
    File out_stdout = stdout()
  }
}