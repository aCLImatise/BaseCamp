version 1.0

task AminoAcidstsv {
  command <<<
    amino_acids_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}