class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/asm_collect.py.cwl
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
- id: mikado
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: util
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: stats
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- asm_collect.py
