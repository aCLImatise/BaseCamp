version 1.0

task Kmermask {
  command <<<
    kmer_mask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}