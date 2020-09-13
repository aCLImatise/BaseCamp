version 1.0

task ArbExportRates {
  command <<<
    arb_export_rates
  >>>
  output {
    File out_stdout = stdout()
  }
}