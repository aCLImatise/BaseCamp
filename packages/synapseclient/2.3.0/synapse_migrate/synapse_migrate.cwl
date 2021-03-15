class: CommandLineTool
id: synapse_migrate.cwl
inputs:
- id: in_source_storage_location_ids
  doc: "[SOURCE_STORAGE_LOCATION_IDS ...]\nSource Synapse storage location ids. If\
    \ specified only\nfiles in these storage locations will be migrated."
  type: boolean?
  inputBinding:
    prefix: --source_storage_location_ids
- id: in_file_version_strategy
  doc: "one of 'new', 'latest', 'all', 'skip' new creates a\nnew version of each entity,\
    \ latest migrates the most\nrecent version, all migrates all versions, skip avoids\n\
    migrating file entities (use when exclusively\ntargeting table attached files"
  type: File?
  inputBinding:
    prefix: --file_version_strategy
- id: in_include_table_files
  doc: Include table attached files when migrating
  type: boolean?
  inputBinding:
    prefix: --include_table_files
- id: in_continue_on_error
  doc: "Whether to continue processing other entities if\nmigration of one fails"
  type: boolean?
  inputBinding:
    prefix: --continue_on_error
- id: in_csv_log_path
  doc: "Path where to log a csv documenting the changes from\nthe migration"
  type: File?
  inputBinding:
    prefix: --csv_log_path
- id: in_dry_run
  doc: Dry run, files will be indexed by not migrated
  type: boolean?
  inputBinding:
    prefix: --dryRun
- id: in_force
  doc: Bypass interactive prompt confirming migration
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_id
  doc: Synapse id
  type: string
  inputBinding:
    position: 0
- id: in_dest_storage_location_id
  doc: Destination Synapse storage location id
  type: string
  inputBinding:
    position: 1
- id: in_db_path
  doc: Local system path where a record keeping file can be
  type: string
  inputBinding:
    position: 2
- id: in_stored
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- migrate
