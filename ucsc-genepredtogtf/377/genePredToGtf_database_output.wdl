version 1.0

task GenePredToGtfDatabaseOutput.gtf {
  input {
    String? geneGenePredTable
    String? outputOutputGtf
  }
  command <<<
    genePredToGtf database output.gtf \
      ~{geneGenePredTable} \
      ~{outputOutputGtf}
  >>>
}