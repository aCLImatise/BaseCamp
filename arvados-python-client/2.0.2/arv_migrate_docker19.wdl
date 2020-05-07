version 1.0

task ArvMigrateDocker19 {
  input {
    Boolean verboseVerbose
    Boolean forceForce
    String storageStorageDriver
    Boolean dryDryRun
    Boolean printPrintUnMigrated
    String tempdirTempdir
    String? inInFile
  }
  command <<<
    arv-migrate-docker19 \
      ~{inInFile} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(storageStorageDriver) then ("--storage-driver " +  '"' + storageStorageDriver + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{true="--print-unmigrated" false="" printPrintUnMigrated} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""}
  >>>
}