version 1.0

task DrawModelGraphModelModel {
  input {
    String? sequenceSequenceNumber
    String? outputOutput
  }
  command <<<
    draw_model_graph model model \
      ~{sequenceSequenceNumber} \
      ~{outputOutput}
  >>>
}