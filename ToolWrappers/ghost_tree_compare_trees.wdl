version 1.0

task GhosttreeComparetrees {
  input {
    Boolean? method
    Int tree_file_one
    Int tree_file_two
  }
  command <<<
    ghost_tree compare_trees \
      ~{tree_file_one} \
      ~{tree_file_two} \
      ~{if (method) then "--method" else ""}
  >>>
  parameter_meta {
    method: "[pearson|spearman]\\ncorrelation method to use in Mantel test"
    tree_file_one: ""
    tree_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}