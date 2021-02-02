version 1.0

task RunFragGeneScanpl {
  command <<<
    run_FragGeneScan_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}