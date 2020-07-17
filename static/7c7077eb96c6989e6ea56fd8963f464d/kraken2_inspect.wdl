version 1.0

task Kraken2Inspect {
  input {
    String? db
    String? threads
    Boolean? skip_counts
    Boolean? use_mpa_style
    Boolean? report_zero_counts
  }
  command <<<
    kraken2-inspect \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--skip-counts" false="" skip_counts} \
      ~{true="--use-mpa-style" false="" use_mpa_style} \
      ~{true="--report-zero-counts" false="" report_zero_counts}
  >>>
  parameter_meta {
    db: "Name for Kraken 2 DB (default: none)"
    threads: "Number of threads to use"
    skip_counts: "Only print database summary statistics"
    use_mpa_style: "Format output like Kraken 1's kraken-mpa-report"
    report_zero_counts: "Report counts for ALL taxa, even if counts are zero"
  }
}