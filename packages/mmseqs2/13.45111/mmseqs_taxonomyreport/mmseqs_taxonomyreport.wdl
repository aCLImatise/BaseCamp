version 1.0

task MmseqsTaxonomyreport {
  input {
    Int? report_mode
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs taxonomyreport \
      ~{if defined(report_mode) then ("--report-mode " +  '"' + report_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    report_mode: "Taxonomy report mode 0: Kraken 1: Krona [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}