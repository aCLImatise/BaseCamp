class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/align_collect.py.cwl
inputs:
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: collect
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: info
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: multiple
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: stats
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- align_collect.py
