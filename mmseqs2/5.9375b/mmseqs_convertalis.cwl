class: CommandLineTool
id: mmseqs_convertalis.cwl
inputs:
- id: format_mode
  doc: '0               output format 0: BLAST-TAB, 1: PAIRWISE, 2: BLAST-TAB + query/db
    length'
  type: boolean
  inputBinding:
    prefix: --format-mode
- id: no_preload
  doc: 'false           Do not preload database                                     '
  type: boolean
  inputBinding:
    prefix: --no-preload
- id: db_output
  doc: 'false           Output a result db instead of a text file                   '
  type: boolean
  inputBinding:
    prefix: --db-output
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertalis
