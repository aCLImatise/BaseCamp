version 1.0

task DrawModelGraphSequenceNumber {
  input {
    String draw_model_graph
    String model
    String sequence_number
    String var_output
  }
  command <<<
    draw_model_graph sequence_number \
      ~{draw_model_graph} \
      ~{model} \
      ~{sequence_number} \
      ~{var_output}
  >>>
  runtime {
    docker: "None"
  }
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