version 1.0

task Ipcontroller2 {
  command <<<
    ipcontroller2
  >>>
  output {
    File out_stdout = stdout()
  }
}