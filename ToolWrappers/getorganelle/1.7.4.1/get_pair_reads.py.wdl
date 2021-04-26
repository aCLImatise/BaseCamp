version 1.0

task GetPairReadspy {
  command <<<
    get_pair_reads_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  output {
    File out_stdout = stdout()
  }
}