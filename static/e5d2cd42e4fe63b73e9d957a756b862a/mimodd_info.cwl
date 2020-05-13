class: CommandLineTool
id: mimodd_info.cwl
inputs:
- id: ofile
  doc: 'redirect the output to the specified file (default: stdout)'
  type: string
  inputBinding:
    prefix: --ofile
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: o_format
  doc: '|txt    format for the output (default: txt)'
  type: string
  inputBinding:
    prefix: --oformat
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- info
