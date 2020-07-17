version 1.0

task TreebestTreedist {
  input {
    String tree_one
    String tree_two
  }
  command <<<
    treebest treedist \
      ~{tree_one} \
      ~{tree_two}
  >>>
  parameter_meta {
    tree_one: ""
    tree_two: ""
  }
}