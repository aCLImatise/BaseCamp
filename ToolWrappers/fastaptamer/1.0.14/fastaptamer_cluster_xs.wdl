version 1.0

task FastaptamerClusterXs {
  command <<<
    fastaptamer_cluster_xs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}