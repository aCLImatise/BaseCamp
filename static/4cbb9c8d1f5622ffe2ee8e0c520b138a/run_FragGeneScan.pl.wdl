version 1.0

task RunFragGeneScanpl {
  command <<<
    run_FragGeneScan_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}