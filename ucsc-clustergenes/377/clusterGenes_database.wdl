version 1.0

task ClusterGenesDatabase {
  input {
    String? outputOutputFile
    String? databaseDatabase
    String? tableTableN
  }
  command <<<
    clusterGenes database \
      ~{outputOutputFile} \
      ~{databaseDatabase} \
      ~{tableTableN}
  >>>
}