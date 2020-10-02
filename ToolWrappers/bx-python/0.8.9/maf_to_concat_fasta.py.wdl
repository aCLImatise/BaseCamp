version 1.0

task MafToConcatFastapy {
  command <<<
    maf_to_concat_fasta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}