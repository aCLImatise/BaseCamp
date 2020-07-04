version 1.0

task TreebestSortleaf {
  input {
    String tree_one
    String? tree_two
  }
  command <<<
    treebest sortleaf \
      ~{tree_one} \
      ~{tree_two}
  >>>
  parameter_meta {
    tree_one: ""
    tree_two: ""
  }
}