version 1.0

task DrawModelGraphModelSequenceNumber {
  input {
    String? outputOutput
  }
  command <<<
    draw_model_graph model sequence_number \
      ~{outputOutput}
  >>>
}