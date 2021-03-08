version 1.0

task GetPairReadspy {
  command <<<
    get_pair_reads_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}