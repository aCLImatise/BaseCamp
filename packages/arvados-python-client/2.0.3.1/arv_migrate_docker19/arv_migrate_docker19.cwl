class: CommandLineTool
id: ../../../arv_migrate_docker19.cwl
inputs:
- id: in_verbose
  doc: Print stdout/stderr even on success
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: Try to migrate even if there isn't enough space
  type: boolean
  inputBinding:
    prefix: --force
- id: in_storage_driver
  doc: Docker storage driver, e.g. aufs, overlay, vfs
  type: string
  inputBinding:
    prefix: --storage-driver
- id: in_dry_run
  doc: Print number of pending migrations.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: in_print_un_migrated
  doc: Print list of images needing migration.
  type: boolean
  inputBinding:
    prefix: --print-unmigrated
- id: in_tempdir
  doc: Set temporary directory
  type: Directory
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arv-migrate-docker19
