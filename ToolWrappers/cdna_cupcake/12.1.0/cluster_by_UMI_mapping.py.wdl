version 1.0

task ClusterByUMIMappingpy {
  command <<<
    cluster_by_UMI_mapping_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}