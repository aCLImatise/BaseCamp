version 1.0

task Cluster2bedgraph.pl {
  input {
    String cluster_distance_file
    String? res
    String? name
  }
  command <<<
    cluster2bedgraph.pl \
      ~{cluster_distance_file} \
      ~{res} \
      ~{name}
  >>>
  parameter_meta {
    cluster_distance_file: ""
    res: ""
    name: ""
  }
}