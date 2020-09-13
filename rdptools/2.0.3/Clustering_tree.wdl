version 1.0

task ClusteringTree {
  input {
    String tree_builder
    String id_mapping
    String merges_dot_bin
    String newick_out
  }
  command <<<
    Clustering tree \
      ~{tree_builder} \
      ~{id_mapping} \
      ~{merges_dot_bin} \
      ~{newick_out}
  >>>
  parameter_meta {
    tree_builder: ""
    id_mapping: ""
    merges_dot_bin: ""
    newick_out: ""
  }
  output {
    File out_stdout = stdout()
  }
}