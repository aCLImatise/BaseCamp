version 1.0

task CheckvQualitySummaryOutputOutput {
  input {
    Boolean quietQuiet
    String? inputInput
    String? outputOutput
  }
  command <<<
    checkv quality_summary output output \
      ~{inputInput} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}