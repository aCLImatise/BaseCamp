version 1.0

task DrawModelGraphOutput {
  input {
    String? modelModel
    String? sequenceSequenceNumber
    String? outputOutput
  }
  command <<<
    draw_model_graph output \
      ~{modelModel} \
      ~{sequenceSequenceNumber} \
      ~{outputOutput}
  >>>
}