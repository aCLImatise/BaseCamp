class: CommandLineTool
id: ../../../vtools_show.cwl
inputs:
- id: in_save_snapshots
  doc: "'. 'pipeline PIPELINE' for details of"
  type: boolean
  inputBinding:
    prefix: --save_snapshots
- id: in_limit
  doc: Limit output to the first N records.
  type: string
  inputBinding:
    prefix: --limit
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- show
