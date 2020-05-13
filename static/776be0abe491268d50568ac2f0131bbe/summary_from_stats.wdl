version 1.0

task SummaryFromStats {
  input {
    String outputOutput
    Array[String]+ percentilesPercentiles
    Boolean perPerReference
  }
  command <<<
    summary_from_stats \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(percentilesPercentiles) then ("--percentiles " +  '"' + percentilesPercentiles + '"') else ""} \
      ~{true="--per_reference" false="" perPerReference}
  >>>
}