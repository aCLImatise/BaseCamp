version 1.0

task RunTransGeneScanpl {
  command <<<
    run_TransGeneScan_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}