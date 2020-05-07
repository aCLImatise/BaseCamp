version 1.0

task GenePredToGtfOutput.gtf {
  input {
    String? databaseDatabase
    String? geneGenePredTable
    String? outputOutputGtf
  }
  command <<<
    genePredToGtf output.gtf \
      ~{databaseDatabase} \
      ~{geneGenePredTable} \
      ~{outputOutputGtf}
  >>>
}