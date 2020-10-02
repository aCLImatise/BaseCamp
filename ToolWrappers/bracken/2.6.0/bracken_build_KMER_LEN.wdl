version 1.0

task BrackenbuildKMERLEN {
  command <<<
    bracken_build KMER_LEN
  >>>
  output {
    File out_stdout = stdout()
  }
}