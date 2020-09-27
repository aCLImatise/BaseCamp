version 1.0

task TreebestFormat {
  input {
    Boolean? one
    String tree
  }
  command <<<
    treebest format \
      ~{tree} \
      ~{if (one) then "-1" else ""}
  >>>
  parameter_meta {
    one: ""
    tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}