version 1.0

task GenePredToGtfDatabaseGenePredTable {
  input {
    String? outputOutputGtf
  }
  command <<<
    genePredToGtf database genePredTable \
      ~{outputOutputGtf}
  >>>
}