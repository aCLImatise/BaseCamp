version 1.0

task ClusterGenesTableN {
  input {
    String? outputOutputFile
    String? databaseDatabase
    String? tableTableN
  }
  command <<<
    clusterGenes tableN \
      ~{outputOutputFile} \
      ~{databaseDatabase} \
      ~{tableTableN}
  >>>
}