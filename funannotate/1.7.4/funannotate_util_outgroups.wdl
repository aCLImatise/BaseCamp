version 1.0

task FunannotateUtilOutgroups {
  input {
    Boolean inputInput
    Boolean speciesSpecies
    Boolean buscoBuscoDb
    Boolean cpusCpus
    Boolean databaseDatabase
    String? outOutGroups
    String? argumentsArguments
  }
  command <<<
    funannotate util outgroups \
      ~{outOutGroups} \
      ~{true="--input" false="" inputInput} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--database" false="" databaseDatabase} \
      ~{argumentsArguments}
  >>>
}