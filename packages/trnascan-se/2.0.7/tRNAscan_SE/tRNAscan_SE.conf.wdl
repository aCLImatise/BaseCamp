version 1.0

task TRNAscanSEconf {
  command <<<
    tRNAscan_SE_conf
  >>>
  runtime {
    docker: "quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}