version 1.0

task PoppunkAddWeightspy {
  input {
    Boolean? graph_ml
    String add_weights
    String graph
    String distances
    String var_output
  }
  command <<<
    poppunk_add_weights_py \
      ~{add_weights} \
      ~{graph} \
      ~{distances} \
      ~{var_output} \
      ~{if (graph_ml) then "--graphml" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  parameter_meta {
    graph_ml: ""
    add_weights: ""
    graph: ""
    distances: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}