#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-hardmask
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-hardmask
inputs:
- doc: input mask file
  id: mask_file
  inputBinding:
    position: 0
  type: string
- doc: genomedata archive
  id: gd_archive
  inputBinding:
    position: 1
  type: string
- doc: 'Track(s) to be filtered (default: all)'
  id: track_name
  inputBinding:
    prefix: --trackname
  type:
    items: string
    type: array
- doc: 'Specify a comparison operation on a value to mask out (e.g. "lt0.5" will mask
    all values less than 0.5). See the bash comparison operators for the two letter
    operations (default: all values masked)'
  id: hard_mask
  inputBinding:
    prefix: --hardmask
  type: string
- doc: Do not close the genomedata archive after masking
  id: no_close
  inputBinding:
    prefix: --no-close
  type: boolean
- doc: Do not perform any masking. Useful with verbosity set to see what regions would
    be filtered
  id: dry_run
  inputBinding:
    prefix: --dry-run
  type: boolean
- doc: Print status and diagnostic messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
