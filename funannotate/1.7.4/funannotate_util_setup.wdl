version 1.0

task FunannotateUtilSetup {
  input {
    Boolean installInstall
    Boolean buscoBuscoDb
    Boolean databaseDatabase
    Boolean updateUpdate
    Boolean forceForce
    Boolean wgetWget
    String? setupSetup
    String? argumentsArguments
  }
  command <<<
    funannotate util setup \
      ~{setupSetup} \
      ~{true="--install" false="" installInstall} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="--force" false="" forceForce} \
      ~{true="--wget" false="" wgetWget} \
      ~{argumentsArguments}
  >>>
}