class: CommandLineTool
id: pslSort.cwl
inputs:
- id: no_head
  doc: Do not write psl header.
  type: boolean
  inputBinding:
    prefix: -nohead
- id: verbose
  doc: Set verbosity level, higher for more output. Default is 1.
  type: string
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSort
