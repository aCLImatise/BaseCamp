version 1.0

task FastaptamerClusterXs {
  command <<<
    fastaptamer_cluster_xs
  >>>
  output {
    File out_stdout = stdout()
  }
}