version 1.0

task SynapseMigrate {
  input {
    Boolean? source_storage_location_ids
    File? file_version_strategy
    Boolean? include_table_files
    Boolean? continue_on_error
    File? csv_log_path
    Boolean? dry_run
    Boolean? force
    String id
    String dest_storage_location_id
    String db_path
    String stored
  }
  command <<<
    synapse migrate \
      ~{id} \
      ~{dest_storage_location_id} \
      ~{db_path} \
      ~{stored} \
      ~{if (source_storage_location_ids) then "--source_storage_location_ids" else ""} \
      ~{if defined(file_version_strategy) then ("--file_version_strategy " +  '"' + file_version_strategy + '"') else ""} \
      ~{if (include_table_files) then "--include_table_files" else ""} \
      ~{if (continue_on_error) then "--continue_on_error" else ""} \
      ~{if defined(csv_log_path) then ("--csv_log_path " +  '"' + csv_log_path + '"') else ""} \
      ~{if (dry_run) then "--dryRun" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
  }
  parameter_meta {
    source_storage_location_ids: "[SOURCE_STORAGE_LOCATION_IDS ...]\\nSource Synapse storage location ids. If specified only\\nfiles in these storage locations will be migrated."
    file_version_strategy: "one of 'new', 'latest', 'all', 'skip' new creates a\\nnew version of each entity, latest migrates the most\\nrecent version, all migrates all versions, skip avoids\\nmigrating file entities (use when exclusively\\ntargeting table attached files"
    include_table_files: "Include table attached files when migrating"
    continue_on_error: "Whether to continue processing other entities if\\nmigration of one fails"
    csv_log_path: "Path where to log a csv documenting the changes from\\nthe migration"
    dry_run: "Dry run, files will be indexed by not migrated"
    force: "Bypass interactive prompt confirming migration"
    id: "Synapse id"
    dest_storage_location_id: "Destination Synapse storage location id"
    db_path: "Local system path where a record keeping file can be"
    stored: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}