version 1.0

task Msformatter {
  command <<<
    msformatter
  >>>
  runtime {
    docker: "quay.io/biocontainers/fastsimbac:1.0.1_bd3ad13d8f79--h17a57d0_1"
  }
  output {
    File out_stdout = stdout()
  }
}