version 1.0

task Iptest2 {
  command <<<
    iptest2
  >>>
  output {
    File out_stdout = stdout()
  }
}