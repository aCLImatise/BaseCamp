version 1.0

task Arvmigratedocker19 {
  input {
    Boolean? verbose
    Boolean? force
    String? storage_driver
    Boolean? dry_run
    Boolean? print_un_migrated
    Directory? tempdir
  }
  command <<<
    arv_migrate_docker19 \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(storage_driver) then ("--storage-driver " +  '"' + storage_driver + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (print_un_migrated) then "--print-unmigrated" else ""} \
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
  output {
    File out_stdout = stdout()
  }
}