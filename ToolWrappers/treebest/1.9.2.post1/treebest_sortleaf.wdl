version 1.0

task TreebestSortleaf {
  input {
    Int tree_one
    Int? tree_two
  }
  command <<<
    treebest sortleaf \
      ~{tree_one} \
      ~{tree_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree_one: ""
    tree_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}