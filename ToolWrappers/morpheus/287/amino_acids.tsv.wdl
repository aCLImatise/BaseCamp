version 1.0

task AminoAcidstsv {
  command <<<
    amino_acids_tsv
  >>>
  runtime {
    docker: "quay.io/biocontainers/morpheus:287--0"
  }
  output {
    File out_stdout = stdout()
  }
}