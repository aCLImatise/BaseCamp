version 1.0

task ParseCluster {
  command <<<
    parseCluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}