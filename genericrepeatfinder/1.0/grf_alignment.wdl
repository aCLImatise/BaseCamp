version 1.0

task GrfAlignment {
  input {
    String? typeType
    String? inputInputFastA
    String? outputOutput
  }
  command <<<
    grf-alignment \
      ~{typeType} \
      ~{inputInputFastA} \
      ~{outputOutput}
  >>>
}