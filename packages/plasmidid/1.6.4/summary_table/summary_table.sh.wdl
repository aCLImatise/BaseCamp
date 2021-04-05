version 1.0

task SummaryTablesh {
  command <<<
    summary_table_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  output {
    File out_stdout = stdout()
  }
}