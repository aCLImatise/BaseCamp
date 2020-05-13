version 1.0

task GrfFilter {
  input {
    Int? minMinTrLen
    Int? maxMaxTrLen
    Int? minMinSpacerLen
    Int? maxMaxSpacerLen
    String? inputInputFastA
    String? outputOutput
  }
  command <<<
    grf-filter \
      ~{minMinTrLen} \
      ~{maxMaxTrLen} \
      ~{minMinSpacerLen} \
      ~{maxMaxSpacerLen} \
      ~{inputInputFastA} \
      ~{outputOutput}
  >>>
}