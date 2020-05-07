version 1.0

task CheckvQualitySummaryOutput {
  input {
    Boolean quietQuiet
  }
  command <<<
    checkv quality_summary output \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}