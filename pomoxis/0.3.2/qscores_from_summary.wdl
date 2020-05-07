version 1.0

task QscoresFromSummary {
  input {
    Boolean medianMedian
    String refRef
    String? summariesSummaries
  }
  command <<<
    qscores_from_summary \
      ~{summariesSummaries} \
      ~{true="--median" false="" medianMedian} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}