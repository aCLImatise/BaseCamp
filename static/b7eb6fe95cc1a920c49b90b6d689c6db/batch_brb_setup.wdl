version 1.0

task BatchBrbSetup {
  command <<<
    batch_brb_setup
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}