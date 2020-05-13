version 1.0

task Updatepaths.pl {
  input {
    Boolean manMan
    Boolean verboseVerbose
    Boolean dryDryRun
    String pathsPaths
    String backupBackup
    String databaseDatabase
  }
  command <<<
    updatepaths.pl \
      ~{true="--man" false="" manMan} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(pathsPaths) then ("--paths " +  '"' + pathsPaths + '"') else ""} \
      ~{if defined(backupBackup) then ("--backup " +  '"' + backupBackup + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""}
  >>>
}