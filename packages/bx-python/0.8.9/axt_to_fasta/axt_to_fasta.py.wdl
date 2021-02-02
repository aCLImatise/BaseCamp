version 1.0

task AxtToFastapy {
  command <<<
    axt_to_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}