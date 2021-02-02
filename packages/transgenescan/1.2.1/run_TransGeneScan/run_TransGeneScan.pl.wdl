version 1.0

task RunTransGeneScanpl {
  command <<<
    run_TransGeneScan_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}