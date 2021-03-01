version 1.0

task BrackenbuildKMERLEN {
  command <<<
    bracken_build KMER_LEN
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}