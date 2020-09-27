version 1.0

task Cluster2bedgraphpl {
  input {
    File cluster_distance_file
    String? res
    String? name
  }
  command <<<
    cluster2bedgraph_pl \
      ~{cluster_distance_file} \
      ~{res} \
      ~{name}
  >>>
  parameter_meta {
    cluster_distance_file: ""
    res: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}