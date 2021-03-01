version 1.0

task AnviscriptgenStatsForSingleCopyGenesR {
  command <<<
    anvi_script_gen_stats_for_single_copy_genes_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}