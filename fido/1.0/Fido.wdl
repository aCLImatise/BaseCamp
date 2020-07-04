version 1.0

task Fido {
  input {
    String graph_file
    String gamma
    String alpha
    String beta
  }
  command <<<
    Fido \
      ~{graph_file} \
      ~{gamma} \
      ~{alpha} \
      ~{beta}
  >>>
  parameter_meta {
    graph_file: ""
    gamma: ""
    alpha: ""
    beta: ""
  }
}