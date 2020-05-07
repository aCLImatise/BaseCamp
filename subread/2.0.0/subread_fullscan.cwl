class: CommandLineTool
id: subread_fullscan.cwl
inputs:
- id: read_string
  doc: The read bases.
  type: string
  inputBinding:
    position: 0
- id: i
  doc: Base name of the index.
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: The minimum fraction of matched bases in the read, 0.8 by default
  type: double
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- subread-fullscan
