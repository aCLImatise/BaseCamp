version 1.0

task AXTConvertor {
  command <<<
    AXTConvertor
  >>>
  runtime {
    docker: "quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}