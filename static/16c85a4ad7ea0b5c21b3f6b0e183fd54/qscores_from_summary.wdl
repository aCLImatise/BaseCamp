version 1.0

task QscoresFromSummary {
  input {
    Boolean? median
    String? ref
    String summaries
  }
  command <<<
    qscores_from_summary \
      ~{summaries} \
      ~{true="--median" false="" median} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    median: "Use median. If false, use mean. (default: False)"
    ref: "process single ref, rather than overall result (default: None)"
    summaries: "*summ.txt created by summary_from_stats"
  }
}