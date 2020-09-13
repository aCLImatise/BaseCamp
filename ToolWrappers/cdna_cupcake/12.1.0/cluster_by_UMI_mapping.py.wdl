version 1.0

task ClusterByUMIMappingpy {
  command <<<
    cluster_by_UMI_mapping_py
  >>>
  output {
    File out_stdout = stdout()
  }
}