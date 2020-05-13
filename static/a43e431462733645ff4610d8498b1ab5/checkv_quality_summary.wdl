version 1.0

task CheckvQualitySummary {
  input {
    Boolean quietQuiet
  }
  command <<<
    checkv quality_summary \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}