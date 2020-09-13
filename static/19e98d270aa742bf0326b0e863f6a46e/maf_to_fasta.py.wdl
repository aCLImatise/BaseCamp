version 1.0

task MafToFastapy {
  command <<<
    maf_to_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}