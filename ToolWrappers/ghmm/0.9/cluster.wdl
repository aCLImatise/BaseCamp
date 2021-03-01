version 1.0

task Cluster {
  command <<<
    cluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}