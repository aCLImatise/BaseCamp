version 1.0

task FunannotateSetup {
  input {
    Boolean installInstall
    Boolean buscoBuscoDb
    Boolean databaseDatabase
    Boolean updateUpdate
    Boolean forceForce
    Boolean wgetWget
    String? argumentsArguments
  }
  command <<<
    funannotate setup \
      ~{argumentsArguments} \
      ~{true="--install" false="" installInstall} \
      ~{true="--busco_db" false="" buscoBuscoDb} \
      ~{true="--database" false="" databaseDatabase} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="--force" false="" forceForce} \
      ~{true="--wget" false="" wgetWget}
  >>>
}