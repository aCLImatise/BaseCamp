version 1.0

task Anviscriptrunfunctionalenrichmentstats {
  command <<<
    anvi_script_run_functional_enrichment_stats
  >>>
  output {
    File out_stdout = stdout()
  }
}