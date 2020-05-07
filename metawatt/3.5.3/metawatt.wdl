version 1.0

task Metawatt {
  input {
    Boolean threadsThreads
    Boolean tempTempFolder
    Boolean covCovRelWeight
    Boolean skipSkipDatabaseUpdate
    Boolean checkCheckDependencies
  }
  command <<<
    metawatt \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--temp-folder" false="" tempTempFolder} \
      ~{true="--cov-rel-weight" false="" covCovRelWeight} \
      ~{true="--skip-database-update" false="" skipSkipDatabaseUpdate} \
      ~{true="--check-dependencies" false="" checkCheckDependencies}
  >>>
}