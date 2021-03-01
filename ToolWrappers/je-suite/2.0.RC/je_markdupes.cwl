class: CommandLineTool
id: je_markdupes.cwl
inputs:
- id: in_std_help
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean?
  inputBinding:
    prefix: --stdhelp
- id: in_times_dot
  doc: SPLIT_CHAR=String
  type: string
  inputBinding:
    position: 0
- id: in_value_dot
  doc: COMMENT=String
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- je
- markdupes
