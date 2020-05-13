version 1.0

task ClusterGenesOutputFileDatabase {
  input {
    String? tableTableN
  }
  command <<<
    clusterGenes outputFile database \
      ~{tableTableN}
  >>>
}