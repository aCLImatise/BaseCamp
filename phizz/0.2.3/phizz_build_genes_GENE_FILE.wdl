version 1.0

task PhizzBuildGenesGENEFILE {
  input {
    String? optionsOptions
    String? geneGeneFile
  }
  command <<<
    phizz build-genes GENE_FILE \
      ~{optionsOptions} \
      ~{geneGeneFile}
  >>>
}