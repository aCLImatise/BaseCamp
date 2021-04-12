version 1.0

task DataStat {
  command <<<
    data_stat
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  output {
    File out_stdout = stdout()
  }
}