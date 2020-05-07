version 1.0

task CheckvQualitySummaryOutputInput {
  input {
    Boolean quietQuiet
    String? inputInput
    String? outputOutput
  }
  command <<<
    checkv quality_summary output input \
      ~{inputInput} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}