version 1.0

task ClusterGenes {
  input {
    String table_n
  }
  command <<<
    clusterGenes \
      ~{table_n}
  >>>
  parameter_meta {
    table_n: ""
  }
}