class: CommandLineTool
id: jemalloc.sh.cwl
inputs:
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: found
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- jemalloc.sh
