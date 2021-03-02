version 1.0

task AminoAcidstsv {
  command <<<
    amino_acids_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}