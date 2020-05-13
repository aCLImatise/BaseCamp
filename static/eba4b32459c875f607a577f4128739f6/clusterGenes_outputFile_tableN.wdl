version 1.0

task ClusterGenesOutputFileTableN {
  input {
    String? databaseDatabase
    String? tableTableN
  }
  command <<<
    clusterGenes outputFile tableN \
      ~{databaseDatabase} \
      ~{tableTableN}
  >>>
}