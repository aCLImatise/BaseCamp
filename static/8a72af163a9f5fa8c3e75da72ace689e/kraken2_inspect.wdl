version 1.0

task Kraken2Inspect {
  input {
    String dbDb
    String threadsThreads
    Boolean skipSkipCounts
    Boolean useUseMpaStyle
    Boolean reportReportZeroCounts
  }
  command <<<
    kraken2-inspect \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--skip-counts" false="" skipSkipCounts} \
      ~{true="--use-mpa-style" false="" useUseMpaStyle} \
      ~{true="--report-zero-counts" false="" reportReportZeroCounts}
  >>>
}