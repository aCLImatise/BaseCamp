version 1.0

task Anviscriptenrichmentstats {
  command <<<
    anvi_script_enrichment_stats
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}