class: CommandLineTool
id: minx.cwl
inputs:
- id: in_tabulate
  doc: '[merlin]'
  type: boolean
  inputBinding:
    prefix: --tabulate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minx
