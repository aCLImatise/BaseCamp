version 1.0

task Ipa2task {
  command <<<
    ipa2_task
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  output {
    File out_stdout = stdout()
  }
}