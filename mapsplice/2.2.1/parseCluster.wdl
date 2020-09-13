version 1.0

task ParseCluster {
  command <<<
    parseCluster
  >>>
  output {
    File out_stdout = stdout()
  }
}