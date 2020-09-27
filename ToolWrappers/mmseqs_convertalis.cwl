class: CommandLineTool
id: mmseqs_convertalis.cwl
inputs:
- id: in_format_mode
  doc: 'output format 0: BLAST-TAB, 1: PAIRWISE, 2: BLAST-TAB + query/db length'
  type: long
  inputBinding:
    prefix: --format-mode
- id: in_no_preload
  doc: false           Do not preload database
  type: boolean
  inputBinding:
    prefix: --no-preload
- id: in_db_output
  doc: false           Output a result db instead of a text file
  type: File
  inputBinding:
    prefix: --db-output
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_db_output
  doc: false           Output a result db instead of a text file
  type: File
  outputBinding:
    glob: $(inputs.in_db_output)
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertalis
