version 1.0

task AnviSetupPdbDatabase {
  input {
    File pdbPdbDatabasePath
    String numNumThreads
    Boolean updateUpdate
    Boolean skipSkipModellerUpdate
    Boolean resetReset
  }
  command <<<
    anvi-setup-pdb-database \
      ~{if defined(pdbPdbDatabasePath) then ("--pdb-database-path " +  '"' + pdbPdbDatabasePath + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="--skip-modeller-update" false="" skipSkipModellerUpdate} \
      ~{true="--reset" false="" resetReset}
  >>>
}