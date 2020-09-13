version 1.0

task Iptest {
  command <<<
    iptest
  >>>
  output {
    File out_stdout = stdout()
  }
}