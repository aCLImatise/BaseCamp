class: CommandLineTool
id: ../../../bam2gtf.py.cwl
inputs:
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: convert
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: gtf
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2gtf.py
