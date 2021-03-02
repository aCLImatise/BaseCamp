version 1.0

task ReadSummary {
  command <<<
    read_summary
  >>>
  runtime {
    docker: "quay.io/biocontainers/fast5-research:1.2.22--pyh864c0ab_0"
  }
  output {
    File out_stdout = stdout()
  }
}