version 1.0

task DownloadAntismashDatabases {
  input {
    String databaseDatabaseDir
  }
  command <<<
    download-antismash-databases \
      ~{if defined(databaseDatabaseDir) then ("--database-dir " +  '"' + databaseDatabaseDir + '"') else ""}
  >>>
}