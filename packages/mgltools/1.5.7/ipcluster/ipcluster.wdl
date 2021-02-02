version 1.0

task Ipcluster {
  command <<<
    ipcluster
  >>>
  output {
    File out_stdout = stdout()
  }
}