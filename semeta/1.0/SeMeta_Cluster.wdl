version 1.0

task SeMetaCluster {
  command <<<
    SeMeta_Cluster
  >>>
  output {
    File out_stdout = stdout()
  }
}