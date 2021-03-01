version 1.0

task TreebestRoot {
  input {
    String tree
  }
  command <<<
    treebest root \
      ~{tree}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}