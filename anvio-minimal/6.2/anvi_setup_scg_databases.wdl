version 1.0

task AnviSetupScgDatabases {
  input {
    String numNumThreads
    File scgsScgsTaxonomyDataDir
    String scgsScgsTaxonomyRemoteDatabaseUrl
    Boolean resetReset
    Boolean redoRedoDatabases
  }
  command <<<
    anvi-setup-scg-databases \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(scgsScgsTaxonomyDataDir) then ("--scgs-taxonomy-data-dir " +  '"' + scgsScgsTaxonomyDataDir + '"') else ""} \
      ~{if defined(scgsScgsTaxonomyRemoteDatabaseUrl) then ("--scgs-taxonomy-remote-database-url " +  '"' + scgsScgsTaxonomyRemoteDatabaseUrl + '"') else ""} \
      ~{true="--reset" false="" resetReset} \
      ~{true="--redo-databases" false="" redoRedoDatabases}
  >>>
}