version 1.0

task ArvMigrateDocker19 {
  input {
    Boolean? verbose
    Boolean? force
    String? storage_driver
    Boolean? dry_run
    Boolean? print_un_migrated
    String? tempdir
  }
  command <<<
    arv-migrate-docker19 \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force" false="" force} \
      ~{if defined(storage_driver) then ("--storage-driver " +  '"' + storage_driver + '"') else ""} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--print-unmigrated" false="" print_un_migrated} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print stdout/stderr even on success"
    force: "Try to migrate even if there isn't enough space"
    storage_driver: "Docker storage driver, e.g. aufs, overlay, vfs"
    dry_run: "Print number of pending migrations."
    print_un_migrated: "Print list of images needing migration."
    tempdir: "Set temporary directory"
  }
}