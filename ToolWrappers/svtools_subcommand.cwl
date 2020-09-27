class: CommandLineTool
id: svtools_subcommand.cwl
inputs:
- id: in_support
  doc: ''
  type: boolean
  inputBinding:
    prefix: --support
- id: in_svtools
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtools
- subcommand
