version 1.0

task SingleCellRnaSeqMetricsCollector {
  input {
    String mM
    String vV
  }
  command <<<
    SingleCellRnaSeqMetricsCollector \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}