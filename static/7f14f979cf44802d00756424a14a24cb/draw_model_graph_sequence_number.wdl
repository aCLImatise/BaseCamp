version 1.0

task DrawModelGraphSequenceNumber {
  input {
    String? modelModel
    String? sequenceSequenceNumber
    String? outputOutput
  }
  command <<<
    draw_model_graph sequence_number \
      ~{modelModel} \
      ~{sequenceSequenceNumber} \
      ~{outputOutput}
  >>>
}