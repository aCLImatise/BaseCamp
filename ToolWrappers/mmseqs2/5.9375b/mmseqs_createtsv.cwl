class: CommandLineTool
id: mmseqs_createtsv.cwl
inputs:
- id: in_first_seq_as_repr
  doc: false           Use the first sequence of the clustering result as representative
    sequence
  type: boolean?
  inputBinding:
    prefix: --first-seq-as-repr
- id: in_target_column
  doc: 1               Select a target column (default 1), 0 if no target id exists.
  type: boolean?
  inputBinding:
    prefix: --target-column
- id: in_full_header
  doc: false           Replace DB ID by its corresponding Full Header
  type: boolean?
  inputBinding:
    prefix: --full-header
- id: in_db_output
  doc: false           Output a result db instead of a text file
  type: File?
  inputBinding:
    prefix: --db-output
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_db_output
  doc: false           Output a result db instead of a text file
  type: File?
  outputBinding:
    glob: $(inputs.in_db_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- createtsv
