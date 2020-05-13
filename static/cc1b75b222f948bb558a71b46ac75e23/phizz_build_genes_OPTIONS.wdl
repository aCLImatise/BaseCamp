version 1.0

task PhizzBuildGenesOPTIONS {
  input {
    String? geneGeneFile
  }
  command <<<
    phizz build-genes OPTIONS \
      ~{geneGeneFile}
  >>>
}