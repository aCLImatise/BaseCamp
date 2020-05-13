class: CommandLineTool
id: arv_migrate_docker19.cwl
inputs:
- id: in_file
  doc: List of images to be migrated
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Print stdout/stderr even on success
  type: boolean
  inputBinding:
    prefix: --verbose
- id: force
  doc: Try to migrate even if there isn't enough space
  type: boolean
  inputBinding:
    prefix: --force
- id: storage_driver
  doc: Docker storage driver, e.g. aufs, overlay, vfs
  type: string
  inputBinding:
    prefix: --storage-driver
- id: dry_run
  doc: Print number of pending migrations.
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: print_un_migrated
  doc: Print list of images needing migration.
  type: boolean
  inputBinding:
    prefix: --print-unmigrated
- id: tempdir
  doc: Set temporary directory
  type: string
  inputBinding:
    prefix: --tempdir
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-migrate-docker19
