class: CommandLineTool
id: matchGraph.py.cwl
inputs:
- id: e
  doc: is the input filename
  type: string
  inputBinding:
    prefix: -e
- id: w
  doc: is the output filename
  type: string
  inputBinding:
    prefix: -w
- id: c
  doc: the max cardinality matching
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- matchGraph.py
