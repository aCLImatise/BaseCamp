version 1.0

task TreebestSortleaf {
  input {
    String? tree1Tree1
    String? tree2Tree2
  }
  command <<<
    treebest sortleaf \
      ~{tree1Tree1} \
      ~{tree2Tree2}
  >>>
}