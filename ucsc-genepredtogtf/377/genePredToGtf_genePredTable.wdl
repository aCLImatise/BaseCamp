version 1.0

task GenePredToGtfGenePredTable {
  input {
    String? databaseDatabase
    String? geneGenePredTable
    String? outputOutputGtf
  }
  command <<<
    genePredToGtf genePredTable \
      ~{databaseDatabase} \
      ~{geneGenePredTable} \
      ~{outputOutputGtf}
  >>>
}