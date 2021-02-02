version 1.0

task DrawModelGraphOutput {
  input {
    String draw_model_graph
    String model
    String sequence_number
    String var_output
  }
  command <<<
    draw_model_graph output \
      ~{draw_model_graph} \
      ~{model} \
      ~{sequence_number} \
      ~{var_output}
  >>>
  parameter_meta {
    draw_model_graph: ""
    model: ""
    sequence_number: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}