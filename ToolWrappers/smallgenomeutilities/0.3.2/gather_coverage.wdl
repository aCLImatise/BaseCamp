version 1.0

task GatherCoverage {
  input {
    File? unified_coverage_table
    File? stats
    Int? threads
    String tsv
  }
  command <<<
    gather_coverage \
      ~{tsv} \
      ~{if defined(unified_coverage_table) then ("--output " +  '"' + unified_coverage_table + '"') else ""} \
      ~{if defined(stats) then ("--stats " +  '"' + stats + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0"
  }
  parameter_meta {
    unified_coverage_table: "unified coverage table output file"
    stats: "file to write per-position cohort-wide stats to"
    threads: "number of threads"
    tsv: "per sample coverage table input file(s)"
  }
  output {
    File out_stdout = stdout()
    File out_unified_coverage_table = "${in_unified_coverage_table}"
  }
}