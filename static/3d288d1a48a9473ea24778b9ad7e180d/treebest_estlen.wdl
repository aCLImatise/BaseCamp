version 1.0

task TreebestEstlen {
  input {
    String tree
    String matrix
    String tag
  }
  command <<<
    treebest estlen \
      ~{tree} \
      ~{matrix} \
      ~{tag}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: ""
    matrix: ""
    tag: ""
  }
  output {
    File out_stdout = stdout()
  }
}