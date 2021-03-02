version 1.0

task AdjustScanRankerScoreByGroup {
  input {
    String group_file
  }
  command <<<
    adjustScanRankerScoreByGroup \
      ~{group_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0"
  }
  parameter_meta {
    group_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}