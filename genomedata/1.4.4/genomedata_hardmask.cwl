class: CommandLineTool
id: genomedata_hardmask.cwl
inputs:
- id: mask_file
  doc: input mask file
  type: string
  inputBinding:
    position: 0
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 1
- id: track_name
  doc: 'Track(s) to be filtered (default: all)'
  type: string[]
  inputBinding:
    prefix: --trackname
- id: hard_mask
  doc: 'Specify a comparison operation on a value to mask out (e.g. "lt0.5" will mask
    all values less than 0.5). See the bash comparison operators for the two letter
    operations (default: all values masked)'
  type: string
  inputBinding:
    prefix: --hardmask
- id: no_close
  doc: Do not close the genomedata archive after masking
  type: boolean
  inputBinding:
    prefix: --no-close
- id: dry_run
  doc: Do not perform any masking. Useful with verbosity set to see what regions would
    be filtered
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: verbose
  doc: Print status and diagnostic messages
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-hardmask
