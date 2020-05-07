version 1.0

task DrawModelGraphModelOutput {
  input {
    String? sequenceSequenceNumber
    String? outputOutput
  }
  command <<<
    draw_model_graph model output \
      ~{sequenceSequenceNumber} \
      ~{outputOutput}
  >>>
}