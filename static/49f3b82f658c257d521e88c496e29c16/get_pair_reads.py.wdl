version 1.0

task GetPairReadspy {
  command <<<
    get_pair_reads_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}