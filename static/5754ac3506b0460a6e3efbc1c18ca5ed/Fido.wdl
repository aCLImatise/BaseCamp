version 1.0

task Fido {
  input {
    File graph_file
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph_file: ""
    gamma: ""
    alpha: ""
    beta: ""
  }
  output {
    File out_stdout = stdout()
  }
}