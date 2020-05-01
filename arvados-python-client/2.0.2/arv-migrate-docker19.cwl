#!/usr/bin/env cwl-runner

baseCommand:
- arv-migrate-docker19
class: CommandLineTool
cwlVersion: v1.0
id: arv-migrate-docker19
inputs:
- doc: List of images to be migrated
  id: in_file
  inputBinding:
    position: 0
  type: string
- doc: Print stdout/stderr even on success
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Try to migrate even if there isn't enough space
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Docker storage driver, e.g. aufs, overlay, vfs
  id: storage_driver
  inputBinding:
    prefix: --storage-driver
  type: string
- doc: Print number of pending migrations.
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
- doc: Print list of images needing migration.
  id: print_un_migrated
  inputBinding:
    prefix: --print-unmigrated
  type: boolean
- doc: Set temporary directory
  id: tempdir
  inputBinding:
    prefix: --tempdir
  type: string
