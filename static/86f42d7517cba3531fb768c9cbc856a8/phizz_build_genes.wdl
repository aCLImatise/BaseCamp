version 1.0

task PhizzBuildGenes {
  input {
    String gene_file
  }
  command <<<
    phizz build-genes \
      ~{gene_file}
  >>>
  parameter_meta {
    gene_file: ""
  }
}