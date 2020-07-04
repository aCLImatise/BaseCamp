version 1.0

task GhostTreeCompareTrees {
  input {
    Boolean? method
    String tree_file_one
    String tree_file_two
  }
  command <<<
    ghost-tree compare-trees \
      ~{tree_file_one} \
      ~{tree_file_two} \
      ~{true="--method" false="" method}
  >>>
  parameter_meta {
    method: "[pearson|spearman] correlation method to use in Mantel test"
    tree_file_one: ""
    tree_file_two: ""
  }
}