version 1.0

task RunClusterFunctionalEnrichmentAnalysispl {
  command <<<
    run_cluster_functional_enrichment_analysis_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}