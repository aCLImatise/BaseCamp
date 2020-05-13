version 1.0

task FunannotateOutgroups {
  input {
    Boolean inputInput
    Boolean speciesSpecies
    Boolean buscoBuscoDb
    Boolean cpusCpus
    Boolean databaseDatabase
    String? argumentsArguments
  }
  command <<<
    funannotate outgroups \
      ~{argumentsArguments} \
      ~{true="--input" false="" inputInput} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--cpus" false="" cpusCpus} \
      ~{true="--database" false="" databaseDatabase}
  >>>
}