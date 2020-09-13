version 1.0

task Kraken2inspect {
  input {
    Int? db
    Int? threads
    Boolean? skip_counts
    Boolean? use_mpa_style
    Boolean? report_zero_counts
  }
  command <<<
    kraken2_inspect \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (skip_counts) then "--skip-counts" else ""} \
      ~{if (use_mpa_style) then "--use-mpa-style" else ""} \
      ~{if (report_zero_counts) then "--report-zero-counts" else ""}
  >>>
  parameter_meta {
    db: "Name for Kraken 2 DB\\n(default: none)"
    threads: "Number of threads to use"
    skip_counts: "Only print database summary statistics"
    use_mpa_style: "Format output like Kraken 1's kraken-mpa-report"
    report_zero_counts: "Report counts for ALL taxa, even if\\ncounts are zero"
  }
  output {
    File out_stdout = stdout()
  }
}