version 1.0

task Anviscriptrunfunctionalenrichmentstats {
  command <<<
    anvi_script_run_functional_enrichment_stats
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}