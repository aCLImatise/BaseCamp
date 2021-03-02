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
      ~{if (median) then "--median" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pomoxis:0.3.6--py_0"
  }
  parameter_meta {
    median: "Use median. If false, use mean. (default: False)"
    ref: "process single ref, rather than overall result (default: None)"
    summaries: "*summ.txt created by summary_from_stats"
  }
  output {
    File out_stdout = stdout()
  }
}