version 1.0

task Ipcluster2 {
  command <<<
    ipcluster2
  >>>
  output {
    File out_stdout = stdout()
  }
}